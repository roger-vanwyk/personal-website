class ContactsController < ApplicationController
  before_filter :authenticate, only: :index
  
  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
		redirect_to :root
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to contacts_url
  end

private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["ADMIN"] && password == ENV["PASSWORD"]
    end
  end

end
