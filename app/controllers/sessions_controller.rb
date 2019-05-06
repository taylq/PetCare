class SessionsController < Devise::SessionsController
  before_action :clear_from_signed_in_touch, only: :destroy
  before_action :clear_from_anonymous_in_touch, only: :create

  def new
    get_pre_login_url
    super
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    if !session[:return_to].blank?
      session[:return_to] = nil
      redirect_to session[:return_to]
    else
      if current_user.dob.blank? && current_user.address.blank? && current_user.phone.blank?
        redirect_to edit_user_registration_path(current_user)
      else
        respond_with resource, :location => after_sign_in_path_for(resource)
      end
    end
  end

  def destroy
    @referer_url = root_path
    super
  end

  private

  def clear_from_anonymous_in_touch
    $redis_onlines.del( "ip:#{request.remote_ip}" )
  end

  def clear_from_signed_in_touch
    $redis_onlines.del( "user:#{current_user.id}" )
  end

  def get_pre_login_url
    @referer_url = root_path
  end

  def after_sign_in_path_for resource
    sign_in_url = url_for(action: "new", controller: "sessions", only_path: false, protocol: "http")
    if current_user.admin?
      @referer_url = admin_users_path
    elsif current_user.doctor?
      @referer_url = doctor_dashboard_path
    elsif current_user.nurse?
      @referer_url = nurse_dashboard_path
    elsif current_user.director?
      @referer_url = director_events_path
    elsif current_user.secretary?
      @referer_url = secretary_dashboard_path
    else
      @referer_url = root_path
    end
    if @referer_url == sign_in_url
      super
    else
      @referer_url || root_path
    end
  end
end
