class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to @card
    else
      render :new
    end
  end

  def edit
    @card = Card.find(params[:id])
    authorize(@card)
  end

  def update
    @card = Card.find(params[:id])
    authorize(@card)
    if @card.update(card_params)
      redirect_to @card
    else
      render :edit
    end
  end

  def destroy
    @card = Card.find(params[:id])
    authorize(@card)
    @card.destroy
    redirect_to cards_path
  end

  def card_params
    params.require(:card).permit(:attack, :defense, :axie_id)
  end

end

