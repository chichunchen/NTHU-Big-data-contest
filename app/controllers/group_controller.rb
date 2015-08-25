class GroupController < ApplicationController
  before_action :authenticate_user!

  def show
    @group = current_user.group
    @users = @group.users.page(params[:page]).per_page(15)
  end
end
