class Chemical < ApplicationRecord
  before_create :application_interval

  # convert weeks into days
  def application_interval
    self.application_frequency = self.application_frequency * 7
  end

  # determine price for chemical's next order
  def total_price(chemical, hectarage)
    hectarage * chemical.price_per_litre
  end
end
