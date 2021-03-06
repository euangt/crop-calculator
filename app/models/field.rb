class Field < ApplicationRecord
  before_create :set_hectarage
  belongs_to :farm
  has_one :crop

  private

  def set_hectarage
    self.hectarage = (self.length * self.width) / 10000
  end
end
