module Nurse
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action do
      redirect_to root_path unless current_user.nurse?
    end
    layout "nurse/index"

    def dashboard
    end
  end
end
