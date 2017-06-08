class PagesController < ApplicationController

  def index
  	@contact = Contact.new
  	@projects = Project.all

  	#Counter is used to add a row div every 3 projects
  	@counter = 1
  end
  
end
