class AreasController < ApplicationController
  def new
    @area = Area.new
  end

  def create
    @area = Area.new(area_params)
    if @area.save
      redirect_to area_path(@area)
    else
      render :new
    end
  end

  def index
    @areas = Area.all
  end


  def show
    @area = Area.find_by_id(params[:id])
  end

  private

  def area_params
    params.require(:area).permit(:name, :notes)
  end
end
end
