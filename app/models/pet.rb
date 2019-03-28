class Pet < ApplicationRecord
  mount_uploader :image, PictureUploader
  enum type_pet: %i(dog cat)
  enum gender: %i(male female)
  has_many :medical_records, dependent: :destroy

  belongs_to :user
  valid_pet = /\A[a-zA-Z0-9]*\z/
  validates :name, presence: true, length: {minimum: 3, maximum: 20}, allow_nil: true, format: {with: valid_pet}
end
