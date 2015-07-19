class UserMailer < ApplicationMailer

  def inform_mail user
    @user = user

    mail to: @user.email, subject: '大數據分析競賽使用者申請內容'
  end

  def meet_email current_user, user
    @current_user = current_user
    @user = user

    mail to: @user.email, subject: '半導體大數據競賽組隊邀請'
  end

  def agree_mail user
    @user = user

    mail to: @user.email, subject: '同意讓您取得聯絡資訊'
  end
end
