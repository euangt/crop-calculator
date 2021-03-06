class Farm < ApplicationRecord
  has_many :fields, dependent: :destroy
  has_many :cropss, through: :fields, dependent: :destroy
end
