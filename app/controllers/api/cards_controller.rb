module Api
  class CardsController < ApplicationController

    def index
      @cards = Card.all
      render json: CardSerializer.new(@cards).serializable_hash
    end

    def show
      @card = Card.find(params[:id])
      render json: CardSerializer.new(@card).serializable_hash
    end
  end
end