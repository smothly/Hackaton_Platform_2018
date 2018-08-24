class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
#디바이스젬 계정 보안
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
#스트롱 파라미터, 계정 보안  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :major, :student_id])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :major, :student_id])
  end
  
end
