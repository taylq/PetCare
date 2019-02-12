class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def index
    @pets = current_user.pets.page(params[:page]).per(Settings.per_page)
  end

  def create
    @pet = Pet.new pet_params.merge(user_id: params[:user_id])
    if @pet.save
      flash[:success] = "success"
    else
      flash[:danger] = "fail"
    end
    redirect_to user_pets_path(current_user)
  end

  private

  def pet_params
    params.require(:pet).permit :user_id, :name, :image, :gender, :type_pet
  end
end
