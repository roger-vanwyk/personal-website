class ExperiencesController < ApplicationController
  before_filter :authenticate

  def index
    @experiences = Experience.all

    # I can edit and delete work experience entries from this controller with @edit_button = true
    @edit_button = true
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      Experience.increment_order(@experience.order_listed, @experience.id)
      redirect_to experiences_url 
    else
      render :new
    end

  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    if @experience.update(experience_params)
      Experience.increment_order(@experience.order_listed, @experience.id)
      redirect_to experiences_url 
    else
      render :edit
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    Experience.decrement_order(@experience.order_listed, @experience.id)
    @experience.destroy
    redirect_to experiences_url
  end

private

  def experience_params
    params.require(:experience).permit(:name, :link, :position, :description, :date, :picture, :order_listed)
  end

end
