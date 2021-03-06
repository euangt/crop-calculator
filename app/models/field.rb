class Field < ApplicationRecord
  before_create :set_hectarage
  belongs_to :farm
  has_one :crop, class_name: "crop", foreign_key: "crop_id"

  private

  def set_hectarage
    self.hectarage = (self.length * self.width) / 10000
  end
end
