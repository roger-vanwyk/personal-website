class PagesController < ApplicationController

  def index
  	@information = Information.first
  	@client_work = Project.where(project_type: 'Client Work')
    @projects = Project.where.not(project_type: 'Client Work')
  	@experiences = Experience.all
  	@contact = Contact.new

  	#Counter is used to add a row div every 3 projects
  	@counter = 0
  end
  
end
