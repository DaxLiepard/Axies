class Axie < ApplicationRecord
  belongs_to :wallet
  has_many :cards

  validates :name, presence: true
  validates :health, :morale, :skill, presence: true
end
