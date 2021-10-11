class LandsController < ApplicationController

  def index
    @lands = Land.all
  end

  def show
    @land = Land.find(params[:id])
  end

  def new
    @land = Land.new
  end

  def create
    @land = Land.create(land_params)
    redirect_to @land
  end

  def edit
    @land = Land.find(params[:id])
  end

  def update
    @land = Land.find(params[:id])
    @land.update(land_params)
    redirect_to @land
  end

  def destroy
    @land = Land.find(params[:id])
    @land.destroy
    redirect_to lands_path
  end

  def land_params
    params.require(:land).permit(:width, :height)
  end
end

