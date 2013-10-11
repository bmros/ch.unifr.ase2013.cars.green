class Bid < ActiveRecord::Base
  belongs_to :car


  validate :check_if_highest_bid

  after_save :update_car
  after_destroy :update_car

  def update_car
    self.car.check_highest_bid
  end

  def check_if_highest_bid
    errors.add(:amount, "must be higher than current bid") unless self.car.startprize < self.amount
  end

end
