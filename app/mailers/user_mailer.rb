class UserMailer < ApplicationMailer

  def meet_email user
    @greeting = "Hi"
    @mail = user.email

    mail to: @mail
  end
end
