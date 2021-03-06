class Crop < ApplicationRecord
  # belongs_to :field
  has_one :chemical, class_name: "chemical", foreign_key: "chemical_id"

end
