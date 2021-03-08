class CropsController < ApplicationController
  def index
    @fields = Field.all
    @hectarage = 0
    @crops = Crop.all
  end

  def show 
    @crop = Crop.find(params[:id])
    @fields = Field.where(crop_id: @crop.id)
    @hectarage = hectarage_count(@fields)
    @chemical = Chemical.find(@crop.chemical_id)
    @date = earliest_spray(@fields)
    
  end

  private 
  
  def earliest_spray(fields)
    date = Date.today
    fields.each do |field|
      field.last_sprayed < date ? date = field.last_sprayed : date
    end
    return date
  end

  def hectarage_count(fields)
    hectarage = 0
    fields.each do |field|
      hectarage += field.hectarage
    end
    return hectarage
  end
end
