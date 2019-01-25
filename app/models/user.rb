class User < ApplicationRecord
  TYPES = %w(Admin Director Doctor Member Secretary).freeze
  devise :database_authenticatable, :registerable, :rememberable, :validatable
end
