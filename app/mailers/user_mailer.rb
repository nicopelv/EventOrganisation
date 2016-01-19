class UserMailer < ApplicationMailer
  def welcome_email(contacts)
    @email = contacts[:email]
    @message = contacts[:message]
    @name = contacts[:name]
   # @url  = contacts_url
    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
end
