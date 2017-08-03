class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end
  #edit
  def edit
    @house = House.find(params[:id])
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
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to house_path(@house)
  end
  #destroy
  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  private
  def house_params
    params.require(:house).permit(:house_name, :moto, :sigil, :house_photo_url)
  end
end
