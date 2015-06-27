class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page]).per_page(15)
  end

  def show
    @user = User.find(params[:id])
  end

  def meet
    @user = User.find(params[:id])
    UserMailer.meet_email(@user).deliver_later
    redirect_to user_path(@user), notice: "已成功寄送邀請信件"
  end
end
