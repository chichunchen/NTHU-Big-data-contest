class UsersController < ApplicationController
  def index
    @users = User.all.page(params[:page]).per_page(15)
  end

  def show
    @user = User.find(params[:id])
  end
end
