class AxiePolicy < ApplicationPolicy
  attr_reader :user, :axie

  def initialize(user, axie)
    @user = user
    @axie = axie
  end

  def edit?
    @axie.wallet.user == @user
  end

  def update?
    @axie.wallet.user == @user
  end

  def destroy?
    @axie.wallet.user == @user
  end

end