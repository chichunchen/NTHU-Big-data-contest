class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :nation,
                                                           :identity, :birthday, :gender, :experience, :course, :phone,
                                                           :cell_phone, :address, :has_job_bank, :agree_job_bank,
                                                           :password_job_bank,
                                                           :school, :department, :system, :grade,
                                                           :skills => [ :name, :category ] )}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:password, :password_confirmation, :current_password,
                                                                   :experience, :course, :phone, :cell_phone, :address,
                                                                   :school, :department, :system, :grade,
                                                                   skills: [ :name, :category]) }
  end

  def admin_check
    unless current_user.has_role? "admin"
      redirect_to :root, notice: "請不要自己輸入網址"
    end
  end
end
