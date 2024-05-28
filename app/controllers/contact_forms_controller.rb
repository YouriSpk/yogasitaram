class ContactFormsController < ApplicationController
  def create
    @name = params[:contact_form][:name]
    @email = params[:contact_form][:email]
    @subject = params[:contact_form][:subject]
    @message = params[:contact_form][:message]

    # Perform any necessary actions with the form data
    NotifierMailer.simple_message(@name, @email, @subject, @message).deliver_now
    flash[:notice] = "Your message has been sent successfully."
    redirect_to root_path
  end
end
