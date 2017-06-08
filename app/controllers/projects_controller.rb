class ProjectsController < ApplicationController
  before_filter :authenticate

  def index
  	@projects = Project.all

    # I can edit and delete projects from this controller with @edit_button = true
    @edit_button = true

    #Counter is used to add a row div every 3 projects
    @counter = 0
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	if @project.save
      Project.increment_order(@project.order_listed, @project.id)
      redirect_to projects_url 
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      Project.increment_order(@project.order_listed, @project.id)
      redirect_to projects_url 
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    Project.decrement_order(@project.order_listed, @project.id)
    @project.destroy
    redirect_to projects_url
  end

private

  def project_params
    params.require(:project).permit(:name, :description, :project_type, :website, :github, :documentation, :order_listed, :picture)
  end

end
