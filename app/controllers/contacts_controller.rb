class ContactsController < ApplicationController
  def index
  end
  
  def send_message

   UserMailer.welcome_email(params[:contacts]).deliver_now
   
   redirect_to(root_path)
   
  end
  
end
