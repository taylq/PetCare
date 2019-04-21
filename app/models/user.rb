class User < ApplicationRecord
  attr_writer :login
  acts_as_voter
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable, :rememberable, :validatable,
    :omniauthable, omniauth_providers: [:google_oauth2], authentication_keys: [:login]
  has_many :blogs, dependent: :destroy

  before_save :email_downcase
  enum role: %i(member admin doctor nurse director secretary)

  has_many :active_relationships, class_name: Relationship.name,
    foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: Relationship.name,
    foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :pets, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :messages
  has_many :conversations, foreign_key: :sender_id
  # has_many :events, -> { where users:{role: 2} }, dependent: :destroy

  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, multiline: true
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true

  default_scope -> {order(created_at: :desc)}
  scope :select_attr, ->{select(:id, :name, :email, :role)}
  scope :search_scope, ->(search){where "name like '%#{search}%' or email like '%#{search}%'"}

  def feed
    following_ids = "SELECT followed_id FROM relationships
      WHERE  follower_id = :user_id"
    Blog.where "user_id IN (#{following_ids}) OR user_id = :user_id",
      user_id: id
  end

  def gravatar_url options = {size: 50}
    gravatar_id = Digest::MD5.hexdigest email.downcase
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end


  def login
    @login || self.username || self.email
  end

  def online?
    $redis_onlines.exists( "user:#{self.id}" )
  end

  class << self
    def digest string
      cost =
        if ActiveModel::SecurePassword.min_cost
          BCrypt::Engine::MIN_COST
        else
          BCrypt::Engine.cost
        end
      BCrypt::Password.create string, cost: cost
    end

    def search search
      if search
        search_scope search
      else
        User.select_attr
      end
    end

    def to_csv
      CSV.generate do |csv|
        attributes = %w{id name email role}
        csv << attributes
        all.each do |user|
          csv << user.attributes.values_at(*attributes)
        end
      end
    end

    def from_omniauth auth
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.name = auth.info.name
        charset = Array('A'..'Z') + Array('a'..'z')
        user.username = Array.new(6){charset.sample}.join
        user.email = auth.info.email
        user.password = "123456"
        user.oauth_token = auth.credentials.token
        user.expires = auth.credentials.expires
        user.oauth_expires_at = auth.credentials.expires_at
        user.refresh_token = auth.credentials.refresh_token
      end
    end

    def find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        if conditions[:username].nil?
          where(conditions).first
        else
          where(username: conditions[:username]).first
        end
      end
    end
  end

  def follow other_user
    following << other_user
  end

  def unfollow other_user
    following.delete other_user
  end

  def following? other_user
    following.include? other_user
  end

  private

  def email_downcase
    email.downcase!
  end
end
