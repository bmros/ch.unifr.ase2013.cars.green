class Car < ActiveRecord::Base
  has_many :bids

  validates :title, presence: true, length: { minimum: 5 }
  validates :brand, length: { minimum: 2 }
  validates :model, length: { minimum: 2 }
  validates :color, length: { minimum: 2 }
  validates :startprize, numericality: true


  def check_highest_bid
    highest_bid = self.bids.order("amount DESC").first.amount rescue 0
    self.startprize = highest_bid
    save
  end



end
