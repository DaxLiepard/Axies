module Api
  class WalletsController < ApplicationController

    def index
      @wallets = Wallet.all
      render json: WalletSerializer.new(@wallets).serializable_hash
    end

    def show
      @wallet = Wallet.find(params[:id])
      render json: WalletSerializer.new(@wallet).serializable_hash
    end
  end
end