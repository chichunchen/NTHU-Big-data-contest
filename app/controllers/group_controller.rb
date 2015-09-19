class GroupController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group

  def show
    #@group = current_user.group
    @users = @group.users.page(params[:page]).per_page(15)
  end

  def edit
  end

  def update
    #@group = current_user.group
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated!'}
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_group
    @group = current_user.group
  end

  def group_params
    params.require(:group).permit(:software, :tryout_file, :preliminary_file, :final_file)
  end
end
