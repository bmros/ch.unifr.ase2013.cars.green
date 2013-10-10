class Bid < ActiveRecord::Base
  belongs_to :car
  # validates :amount, :numericality => {:greater_than => Car.find(:car). :less_than => 10}

end
