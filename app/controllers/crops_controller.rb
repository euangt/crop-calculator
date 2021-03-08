class CropsController < ApplicationController
  def index
    @fields = Field.all
    @hectarage = 0
    @crops = Crop.all

  end

end
