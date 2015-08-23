class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_search_key , :only => [:search]

  def index
    # @users = User.need_group.page(params[:page]).per_page(15)
    @q = User.ransack(params[:q])
    @users = @q.result.includes(:skills, :courses)
    @users = @users.need_group.page(params[:page]).per_page(15)
  end

  def show
    @user = User.find(params[:id])
  end

  def meet
    @user = User.find(params[:id])
    UserMailer.meet_email(current_user, @user).deliver_later
    redirect_to user_path(@user), notice: "已成功寄送邀請信件"
  end

  def agree
    @user = User.find(params[:id])
    UserMailer.agree_mail(@user).deliver_later
  end

  def disagree
  end

  def search
    @users = User.need_group

    if @query_string.present?
      @users = @users.ransack(@search_criteria).result(:distinct => true)
    end

    @users = @users.paginate(:page => params[:page], :per_page => 20 )
  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end

  def search_criteria(query_string)
    { :name_or_school_or_department_cont => query_string }
  end
end
