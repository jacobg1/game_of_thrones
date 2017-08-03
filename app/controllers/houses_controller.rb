class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end
  #edit
  def edit

  end
  #new
  def new
    @house = House.new
  end
  #create
  def create
    @house = House.create(house_params)
    redirect_to house_path(@house)
  end
  #update
  def update
  end
  #destroy
  def destroy
  end

  private
  def house_params
    params.require(:house).permit(:house_name, :moto, :sigil)
  end
end
