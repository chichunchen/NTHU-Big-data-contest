class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params)

    if @group.save
      current_user.join! @group
      redirect_to groups_path, notice: "隊伍新增成功"
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])

    if @group.update(group_params)
      redirect_to groups_path, notice: "修改隊伍成功"
    else
      render :edit
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path, alert: "隊伍已刪除"
  end

  def join
    @group = Group.find(params[:id])

    if !current_user.is_member_of?(@group)
      current_user.join!(@group)
      flash[:notice] = "加入本隊伍成功！"
    else
      flash[:warning] = "你已經是本隊伍成員了！"
    end

    redirect_to group_path(@group)
  end

  def quit
    @group = Group.find(params[:id])

    if current_user.is_member_of?(@group)
      current_user.quit!
      flash[:alert] = "已退出本隊伍！"
    else
      flash[:warning] = "你不是本隊伍成員，無法退出"
    end

    redirect_to group_path(@group)
  end

  private

  def group_params
    params.require(:group).permit(:title)
  end
end
