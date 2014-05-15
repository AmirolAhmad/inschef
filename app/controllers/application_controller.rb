class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end

  #ensure_security_headers(
	#	:hsts => {:include_subdomains => true, :max_age => 20.years.to_i},
	#	:x_frame_options => 'DENY',
	#	:x_content_type_options = "nosniff",
	#	:x_xss_protection = {:value => 1, :mode => 'block'},
	#	:csp => false
	#)
end
