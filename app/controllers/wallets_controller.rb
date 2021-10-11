class WalletsController < ApplicationController
  before_action :authenticate_user!

  def index
    #@wallets = Wallet.where(user: current_user)
    @wallets = current_user.wallets
  end

  def show
    @wallet = Wallet.find(params[:id])
  end

  def new
    @wallet = Wallet.new
  end

  def create
    @wallet = current_user.wallets.new(wallet_params)
    if @wallet.save
      redirect_to @wallet
    else
      render :new
    end
  end

  def edit
    @wallet = Wallet.find(params[:id])
    authorize(@wallet)
  end

  def update
    @wallet = Wallet.find(params[:id])
    authorize(@wallet)
    if @wallet.update(wallet_params)
      redirect_to @wallet
    else
      render :edit
    end
  end

  def destroy
    @wallet = Wallet.find(params[:id])
    authorize(@wallet)
    @wallet.destroy
    redirect_to wallet_path
  end

  def wallet_params
    params.require(:wallet).permit(:ronin_address)
  end
end