class ApplicationController < ActionController::Base
  before_action :set_locale, :search_desease
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_online

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def self.default_url_options
    {locale: I18n.locale}
  end

  def all_signed_in_in_touch
    ids = []
    $redis_onlines.scan_each( match: 'user*' ){|u| ids << u.gsub("user:", "") }
    ids
  end

  def all_anonymous_in_touch
    $redis_onlines.scan_each( match: 'ip*' ).to_a.size
  end

  def all_who_are_in_touch
    $redis_onlines.dbsize
  end

  private

  def search_desease
    @q = Desease.ransack(symptom_cont: params[:q])
  end

  def configure_permitted_parameters
    added_attrs = [:username, :name, :email, :password, :password_confirmation, :remember_me, :address, :phone, :dob, :avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def set_online
    if !!current_user
      $redis_onlines.set( "user:#{current_user.id}", nil, ex: 10*60 )
    else
      $redis_onlines.set( "ip:#{request.remote_ip}", nil, ex: 10*60 )
    end
  end
end
