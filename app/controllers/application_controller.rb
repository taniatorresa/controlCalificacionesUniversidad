class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_filter :configure_permitted_parameters, if: :devise_controller?

    protected
    	def configure_permitted_parameters
    	    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :email, :password, :current_password, :user_type, :apellido_paterno, :apellido_materno] )
    	    devise_parameter_sanitizer.permit(:sign_in, keys: [:nombre, :email, :password, :current_password, :user_type, :apellido_paterno, :apellido_materno] )
    	    devise_parameter_sanitizer.permit(:account_update, keys:[:nombre, :email, :password, :user_type, :apellido_paterno, :apellido_materno] )
    	end
end
