class ChemicalsController < ApplicationController
  def index
    @fields = Field.all
    @hectarage = 0
    @crops = Crop.all
    @date = Date.today
    # @offset = @chemical.application_frequency * 7
  end
  #ToDo
  # Find earliest last_sprayed date from each field
  # Add chemical.application_frequency to that for next_spray 
  # and minus 7 for next_order
end
