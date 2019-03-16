module Director
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action do
      redirect_to root_path unless current_user.director?
    end
    layout "director/index"

    def dashboard
    end
  end
end
