class Crop < ApplicationRecord
  # belongs_to :field
  has_many :chemicals

  def next_order(date, chemical)
    return (date + chemical.application_frequency) - 7
  end
end
