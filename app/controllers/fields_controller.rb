class FieldsController < ApplicationController
  before_action :find_farm, only: [ :edit, :update]

  def index
    @fields = Field.all
  
  end
    
  def edit
  end

  def update
  end

  private

  def find_farm
    @farm = Farm.find(params[:id])
  end

  #prevent passing of malicious code into db
  def farm_params
    params.require(:field).require(:name, :crop, :last_sprayed)
  end
end
