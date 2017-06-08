class ContactsController < ApplicationController
  before_filter :authenticate, only: :index
  
  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_message(@contact).deliver_now
  		flash[:success] = "I have received your message. I will be in touch with you soon."
      redirect_to "/#contact"
    else
      render :new
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to contacts_url
  end

private

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :captcha)
  end

end
