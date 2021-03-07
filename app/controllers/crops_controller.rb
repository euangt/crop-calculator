class CropsController < ApplicationController
  def index
    @fields = Field.all
    @hectarage = 0
    @crops = Crop.all

    # set arbitrary date for comparison - expanded programme would set date from most recent order
    @date = Date.today
  end
end
