class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactsMailer.general_message(@contact).deliver
      redirect_to root_path
    else
      redirect_to contact_path
    end
  end

  def thanks
  end

  private

  def contact_params
    {
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      subject: params[:subject],
      message: params[:message]
    }
  end
end
