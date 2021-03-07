class Chemical < ApplicationRecord
  before_create :application_interval

  # convert weeks into days
  def application_interval
    self.application_frequency = self.application_frequency * 7
  end
end
