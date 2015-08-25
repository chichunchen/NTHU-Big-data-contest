class GroupController < ApplicationController
  before_action :authenticate_user!

  def show
    @group = current_user.group
  end
end
