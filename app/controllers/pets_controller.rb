class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]
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
      flash[:success] = "success"
    else
      flash[:danger] = "fail"
    end
    redirect_to user_path(current_user)
  end

  def edit
    # binding.pry
  end

  def update
    if @pet.update pet_params
      flash[:success] = "update_success"
      redirect_to user_pet_path @user, @pet
    else
      flash[:danger] = "update_fail"
      render :edit
    end
  end

  def destroy
    # binding.pry
    if @pet.destroy
      flash[:success] = "destroy_succsess"
    else
      flash[:danger] = "destroy_fail"
    end
    redirect_to user_path(current_user)
  end

  private

  def find_pet
    @user = User.find_by id: params[:user_id]
    return if @pet = @user.pets.find_by(id: params[:id])
    flash[:danger] = t "users.find_fail"
    redirect_to user_path(@user)
  end

  def pet_params
    params.require(:pet).permit :user_id, :name, :image, :gender, :type_pet
  end
end
