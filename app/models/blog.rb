class Blog < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :image, PictureUploader

  default_scope -> {order(created_at: :desc)}
end
