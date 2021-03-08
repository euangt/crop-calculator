class CropsController < ApplicationController
  def index
    @crops = Crop.all
  end

  def show 
    @crop = Crop.find(params[:id])
    @fields = Field.where(crop_id: @crop.id)

    @hectarage = hectarage_count(@fields)
    @chemical = Chemical.find(@crop.chemical_id)
    @date = earliest_spray(@fields)
    @order_date = @crop.next_order(@date, @chemical)
  end

  private 
  # For each crop, find the earliest spray.
  def earliest_spray(fields)
    # Arbitrary date, in expanded programme this would be set to most recent order/delivery date
    date = Date.today
    fields.each do |field|
      field.last_sprayed < date ? date = field.last_sprayed : date
    end
    return date
  end

  # For each crop find the hectarage it covers
  def hectarage_count(fields)
    hectarage = 0
    fields.each do |field|
      hectarage += field.hectarage
    end
    return hectarage
  end
end
