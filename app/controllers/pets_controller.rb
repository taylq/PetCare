class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def new
    @user = User.find_by id: params[:user_id]
    @pet = @user.pets.new
  end

  def index
    @pets = current_user.pets.page(params[:page]).per(Settings.per_page)
  end

  def show

  end

  def create
    @pet = Pet.new pet_params.merge(user_id: params[:user_id])
    if @pet.save
      flash[:success] = "Pet created successfully!"
    else
      flash[:error] = "Pet create fail!"
    end
    redirect_to user_path(current_user)
  end

  def edit
    # binding.pry
  end

  def update
    if @pet.update pet_params
      flash[:success] = "Pet updated!"
      redirect_to user_pet_path @user, @pet
    else
      flash[:error] = @pet.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    # binding.pry
    if @pet.destroy
      flash[:success] = "Pet delete successfully!"
    else
      flash[:error] = "Pet delete fail!"
    end
    redirect_to user_path(current_user)
  end

  private

  def find_pet
    @user = User.find_by id: params[:user_id]
    return if @pet = @user.pets.find_by(id: params[:id])
    flash[:error] = "Can't found user"
    redirect_to user_path(@user)
  end

  def pet_params
    params.require(:pet).permit :user_id, :name, :image, :gender, :type_pet, :dob
  end
end
