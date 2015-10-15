class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:info] = '報名已截止，使用者申請系統已關閉'
    redirect_to root_path
  end

  def create
    flash[:info] = '報名已截止，使用者申請系統已關閉'
    redirect_to root_path
  end
end
