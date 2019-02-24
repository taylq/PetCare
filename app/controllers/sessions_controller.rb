class SessionsController < Devise::SessionsController
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

  def get_pre_login_url
    @referer_url = root_path
  end

  def after_sign_in_path_for resource
    sign_in_url = url_for(action: "new", controller: "sessions", only_path: false, protocol: "http")
    if @referer_url == sign_in_url
      super
    else
      @referer_url || root_path
    end
  end
end
