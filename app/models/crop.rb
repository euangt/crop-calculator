class Crop < ApplicationRecord
  belongs_to :field
  has_one :chemical
end
