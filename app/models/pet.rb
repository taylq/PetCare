class Pet < ApplicationRecord
  enum type_pet: %i(dog cat)
  enum gender: %i(male female)
  belongs_to :user
end
