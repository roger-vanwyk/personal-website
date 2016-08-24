class Contact < ActiveRecord::Base
	#Validations form is not empty
  validates_presence_of :name, :message => "cant be blank"
  validates_presence_of :email,  :message => "cant be blank"
  validates_presence_of :message,  :message => "cant be blank"
end
