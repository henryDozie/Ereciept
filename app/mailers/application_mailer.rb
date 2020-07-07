class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end

# app/mailers/user_mailer.rb

class UserMailer < ApplicationMailer
  default from: 'manialordz@gmail.com'
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome #{@user.name}")
  end
end