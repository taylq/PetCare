module Doctor
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action do
      redirect_to root_path unless current_user.doctor?
    end
    layout "doctor/index"
  end

  def dashboard

  end
end
