class Pet < ApplicationRecord
  enum type_pet: %i(dog cat)
  enum gender: %i(male female)
  has_many :medical_records, dependent: :destroy

  belongs_to :user
end
