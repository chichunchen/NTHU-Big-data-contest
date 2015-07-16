class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_search_key , :only => [:search]
#  before_action :admin_check

  def index
    @users = User.need_group.page(params[:page]).per_page(15)
  end

  def show
    @user = User.find(params[:id])
  end

  def meet
    @user = User.find(params[:id])
    UserMailer.meet_email(current_user, @user).deliver_later
    redirect_to user_path(@user), notice: "已成功寄送邀請信件"
  end

  def search
    if @query_string.present?
      search_result = User.need_group.ransack(@search_criteria).result(:distinct => true)
      @users = search_result.paginate(:page => params[:page], :per_page => 20 )
    end
  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end

  def search_criteria(query_string)
    { :name_or_school_cont => query_string }
  end
end
