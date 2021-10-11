class AxiesController < ApplicationController
  def index
    @axies = Axie.all
  end

  def show
    @axie = Axie.find(params[:id])
  end

  def new
    @axie = Axie.new
  end

  def create
    @axie = Axie.new(axie_params)

    if @axie.save
      redirect_to @axie
    else
      render :new
    end
  end

  def edit
    @axie = Axie.find(params[:id])
    authorize(@axie)
  end

  def update
    @axie = Axie.find(params[:id])
    authorize(@axie)
    if @axie.update(axie_params)
      redirect_to @axie
    else
      render :edit
    end
  end

  def destroy
    @axie = Axie.find(params[:id])
    authorize(@axie)
    @axie.destroy
    redirect_to axies_path
  end

  def axie_params
    params.require(:axie).permit(:name, :health, :speed, :morale, :skill, :wallet_id)
  end
end