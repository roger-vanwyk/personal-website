# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/contact_message
  def contact_message
  	contact = Contact.last
    ContactMailer.contact_message(contact)
  end

end
