module Admin
  class UsersController < BaseController
    before_action :find_user, except: %i(index new create)

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def show; end

    def edit; end

    def update
      if @user.update_attributes user_params
        flash[:success] = "Cập nhật thành công!"
        redirect_to admin_users_path
      else
        flash[:error] = "Cập nhật thất bại!"
        redirect_to admin_users_path
      end
    end

    def create
      @user = User.new user_params
      if @user.save
        flash[:success] = "Tạo mới người dùng thành công!"
        redirect_to admin_users_path
      else
        flash[:error] = "Tạo mới người dùng thất bại!"
        redirect_to new_admin_user_path
      end
    end

    def destroy
      # binding.pry
      if @user.destroy
        flash[:success] = "Xóa thành công"
      else
        flash[:error] = "Xóa thất bại"
      end
      redirect_to admin_users_path
    end

    private

    def user_params
      params.require(:user).permit :name, :email, :password, :password_confirmation, :role, :username, :avatar
    end

    def find_user
      return if @user = User.find_by(id: params[:id])
      flash[:error] = t "books.find_fail"
      redirect_to admin_users_path
    end
  end
end
