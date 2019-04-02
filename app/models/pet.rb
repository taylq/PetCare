class Pet < ApplicationRecord
  mount_uploader :image, PictureUploader
  enum type_pet: %i(chó mèo)
  enum gender: %i(đực cái)
  has_many :medical_records, dependent: :destroy

  belongs_to :user
  validates :name, presence: true, length: {minimum: 3, maximum: 30}, allow_nil: true
end
