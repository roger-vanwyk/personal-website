class InformationController < ApplicationController
  def index
  	@information = Information.first
  end

  def edit
  	@information = Information.first
  end

  def update
  	@information = Information.first
  	if @information.update(information_params)
  		redirect_to information_index_path
  	else
  		render :edit
  	end
  end

private

  def information_params
    params.require(:information).permit(:headline, :about_myself, :development_experience, :interests, :github, :linkedin, :facebook, :instagram, :resume_link)
  end
end
