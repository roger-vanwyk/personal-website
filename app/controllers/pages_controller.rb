class PagesController < ApplicationController

  def index
  	@projects = Project.all
  	@experiences = Experience.all
  	@contact = Contact.new

  	#Counter is used to add a row div every 3 projects
  	@counter = 0
  end
  
end
