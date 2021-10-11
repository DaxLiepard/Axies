class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :wallets
  after_create :assign_wallet

  def assign_wallet
    Wallet.create(user: self, ronin_address: SecureRandom.uuid)
  end
end
