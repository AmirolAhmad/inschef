class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #ensure_security_headers(
	#	:hsts => {:include_subdomains => true, :max_age => 20.years.to_i},
	#	:x_frame_options => 'DENY',
	#	:x_content_type_options = "nosniff",
	#	:x_xss_protection = {:value => 1, :mode => 'block'},
	#	:csp => false
	#)
end
