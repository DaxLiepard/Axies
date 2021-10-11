class Wallet < ApplicationRecord
  has_many :axies
  belongs_to :user
  after_create :create_axies
  validates :ronin_address, presence: true

  def create_axies
    Axie.create(name: "#{rand(100..2000)}", health: 234, speed: 56, morale: 35, skill: 456, wallet: self )
    Axie.create(name: "#{rand(100..2000)}", health: 65, speed: 22, morale: 50, skill: 456, wallet: self )
  end
end
