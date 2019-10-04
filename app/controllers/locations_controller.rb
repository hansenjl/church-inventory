class LocationsController < ApplicationController
   def new
    @location = Location.new
  end

  def create
    @location = current_user.locations.build(location_params)
    #associate this location to the current_user
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def index
    @locations = Location.all
  end


  def show
    @location = Location.find_by_id(params[:id])
  end

  private

  def location_params
    params.require(:location).permit(:name, :notes)
  end

end
