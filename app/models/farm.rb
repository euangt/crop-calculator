class Farm < ApplicationRecord
  has_many :fields, dependent: :destroy
  has_many :crops, through: :fields, dependent: :destroy
end
