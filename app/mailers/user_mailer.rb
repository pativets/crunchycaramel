class UserMailer < ActionMailer::Base
  default :from => "pativet@crunchycaramel.com"
  
  def welcome_email(user)
    @user = user
    @url  = "http://www.crunchycaramel.com/signin"
    mail(:to => user.email,
         :subject => "Welcome to crunchycaramel Subscriber's Squad")
  end
  
end
