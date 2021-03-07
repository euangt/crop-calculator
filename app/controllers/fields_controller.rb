class FieldsController < ApplicationController
  before_action :find_field, only: [ :show, :edit, :update]

  def index
    @fields = Field.all
  end
    
  ##
  # EVERYTHING BELOW FOR CONTINUED PERSONAL DEVELOPMENT
  ##
  def show
    @crop = Crop.find(@field.crop_id)
    @chemical = Chemical.find(@crop.chemical_id)
    @offset = @chemical.application_frequency * 7
    @order_price = @chemical.price_per_litre * @field.hectarage
  end

  def edit
  end

  def update
  end

  private

  def find_field
    @field = Field.find(params[:id])
  end

  #prevent passing of malicious code into db
  def field_params
    params.require(:field).require(:name, :crop, :last_sprayed)
  end
end
