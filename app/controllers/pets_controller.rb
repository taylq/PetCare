class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def index
    @pets = Pet.all
  end

  def create
    binding.pry
  end

  private

  def pet_params
    params.require(:pet).permit :user_id, :name, :image, :gender, :type
  end
end
