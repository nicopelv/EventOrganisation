class UserMailer < ApplicationMailer
  def welcome_email(contacts)
    @email = contacts[:email]
    @message = contacts[:message]
    @name = contacts[:name]
    @to = 'nicolas.pelvet@gmail.com'
   # @url  = contacts_url
    mail(to: @to, subject: 'Welcome to My Awesome Site')
  end
end
