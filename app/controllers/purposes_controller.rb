class PurposesController < ApplicationController
  def new
    @purpose = Purpose.new
  end

  def create
    @purpose = Purpose.new(purpose_params)
    if @purpose.save
      redirect_to purpose_path(@purpose)
    else
      render :new
    end
  end

  def index
    @purposes = Purpose.all
  end


  def show
    @purpose = Purpose.find_by_id(params[:id])
  end

  private

  def purpose_params
    params.require(:purpose).permit(:name, :notes)
  end
end
end
