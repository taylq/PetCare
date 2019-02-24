class ApplicationController < ActionController::Base
  before_action :set_locale, :search_desease
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def self.default_url_options
    {locale: I18n.locale}
  end

  private

  def search_desease
    @q = Desease.ransack(symptom_cont: params[:q])
  end

  def configure_permitted_parameters
    added_attrs = [:username, :name, :email, :password, :password_confirmation, :remember_me, :address, :phone, :dob]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
