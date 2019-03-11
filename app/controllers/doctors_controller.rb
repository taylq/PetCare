class DoctorsController < ApplicationController
  def index
    @doctors = User.where(role: :doctor)
  end
end
