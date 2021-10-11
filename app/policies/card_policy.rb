class CardPolicy < ApplicationPolicy
  attr_reader :user, :card

  def initialize(user, card)
    @user = user
    @card = card
  end

  def edit?
    @card.user == @user
  end

  def update?
    @card.user == @user
  end

  def destroy?
    @card.user == @user
  end
end