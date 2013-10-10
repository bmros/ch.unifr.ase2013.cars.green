class Car < ActiveRecord::Base
  has_many :bids

  validates :title, presence: true, length: { minimum: 5 }
  validates :brand, length: { minimum: 2 }
  validates :model, length: { minimum: 2 }
  validates :color, length: { minimum: 2 }
  validates :startprize, numericality: true
  validates :buyoutprize, numericality: true
end
