module Nurse
  class PetsController < BaseController
    before_action :find_pet, only: :show
    def new
      @pet = Pet.new
    end

    def show

    end

    def create
      @pet = Pet.new pet_params.merge(user_id: params[:user_id])
      if @pet.save
        flash[:success] = "Success"
      else
        flash[:danger] = "Fail"
      end
      redirect_to user_pets_path(current_user)
    end

    private

    def find_pet
      @user = User.find_by id: params[:user_id]
      return if @pet = @user.pets.find_by(id: params[:id])
      flash[:danger] = t "users.find_fail"
      redirect_to user_path(@user)
    end

    def pet_params
      params.require(:pet).permit :user_id, :name, :image, :gender, :type_pet, :dob
    end
  end
end
