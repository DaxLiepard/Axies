class WalletPolicy < ApplicationPolicy
  attr_reader :user, :wallet

  def initialize(user, wallet)
    @user = user
    @wallet = wallet
  end

  def edit?
    is_same_user?
  end

  def update?
    is_same_user?
  end

  def destroy?
    is_same_user?
  end

  private

  def is_same_user?
    @wallet.user == @user
  end

  def is_different_user?
    @wallet.user != @user
  end
end