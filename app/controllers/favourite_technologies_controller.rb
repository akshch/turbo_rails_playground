class FavouriteTechnologiesController < ApplicationController

  def index
    @technologies = Technology.search(params)
    @favourites = FavouriteTechnology.includes(:technology).all
  end

  def create
    debugger
    @favourite_technology = FavouriteTechnology.new(favourite_technology_params)
      if @favourite_technology.save
        redirect_to  root_path
      end
  end

  def destroy
    @favourite_technology = FavouriteTechnology.find(params[:id])
    @favourite_technology.destroy
    redirect_to root_path
  end

  private
    def favourite_technology_params
      params.require(:favourite_technology).permit(:technology_id)
    end
end
