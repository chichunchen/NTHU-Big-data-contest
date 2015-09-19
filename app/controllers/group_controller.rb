class GroupController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group

  def show
    @users = @group.users.page(params[:page]).per_page(15)
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to @group, notice: 'Group was successfully updated!'
    else
      render :edit
    end
  end

  private

  def set_group
    @group = current_user.group
  end

  def group_params
    params.require(:group).permit(:software, :tryout_file, :tryout_path, :tryout_search,
                                  :preliminary_file, :preliminary_path, :preliminary_search, :final_file)
  end
end
