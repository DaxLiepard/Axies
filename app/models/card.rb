class Card < ApplicationRecord
  belongs_to :axie

  validates :attack, presence: true, inclusion: 20..120
  validates :defense, presence: true, inclusion: 10..80

  def user
    axie.wallet.user
  end
end
