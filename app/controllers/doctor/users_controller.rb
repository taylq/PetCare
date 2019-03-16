module Doctor
  class UsersController < BaseController
    before_action :find_user, except: %i(index new create)

    def index
      @users = User.select_attr.page(params[:page]).per(10).search params[:search]
      respond_to do |format|
        format.html {}
        format.csv { send_data User.search(params[:search]).to_csv }
        format.xls { send_data User.search(params[:search]).to_csv }
      end
    end

    def show
      @pets = @user.pets
      @conversations = Conversation.includes(:recipient, :messages)
      .find(session[:conversations])
    end

    private

    def find_user
      return if @user = User.find_by(id: params[:id])
      flash[:danger] = t "books.find_fail"
      redirect_to admin_users_path
    end
  end
end
