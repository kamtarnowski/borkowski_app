class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_devise_perm_parm, if: :devise_controller?

  private

  def correct_admin
    if user_signed_in?
      if current_user.admin?
      else
        redirect_to root_path
        flash[:warning] = 'Nie masz uprawnień'
      end
    else
      redirect_to root_path
      flash[:warning] = 'Nie masz uprawnień'
    end
  end

  protected

  def configure_devise_perm_parm
    registration_params = [:name, :email, :password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) {
          |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) {
          |u| u.permit(registration_params)
      }
    end
  end
end

