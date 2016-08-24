class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
		redirect_to :root
  end

private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
