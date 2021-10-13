module Api
  class AxiesController < ApplicationController
    def index
      @axies = Axie.all
      render json: AxieSerializer.new(@axies, include: [:cards]).serializable_hash
    end

    def show
      @axie = Axie.find(params[:id])
      render json: AxieSerializer.new(@axie, include: [:cards]).serializable_hash
    end
  end
end