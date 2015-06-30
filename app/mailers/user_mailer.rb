class UserMailer < ApplicationMailer

  def inform_mail user
    @user = user

    mail to: @user.email, subject: '大數據分析競賽使用者申請內容'
  end

  def meet_email user
    @greeting = "Hi"
    @mail = user.email

    mail to: @mail, subject: '有人想認識你喔'
  end
end
