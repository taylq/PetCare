module Secretary
  class PetsController < BaseController
    before_action :find_pet, only: :show

    def show
    end

    private

    def find_pet
      @user = User.find_by id: params[:user_id]
      return if @pet = @user.pets.find_by(id: params[:id])
      flash[:error] = t "users.find_fail"
      redirect_to user_path(@user)
    end
  end
end
