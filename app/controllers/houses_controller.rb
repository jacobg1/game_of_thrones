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
      if @house.user != current_user
        flash[:alert] = 'only head of house can change properties'
        redirect_to house_path(@house)
      end
  end
  #new
  def new
    @house = House.new
  end
  #create
  def create
    @house = current_user.houses.create!(house_params)
    redirect_to house_path(@house)
  end
  #update
  def update
    @house = House.find(params[:id])
    if @house.user == current_user
       @house.update(house_params)
    else
      flash[:alert] = 'only head of house can change properties'
    end
      redirect_to house_path(@house)
  end
  #destroy
  def destroy
    @house = House.find(params[:id])
    if @house.user == current_user
      @house.destroy
    else
      flash[:alert] = 'Only creator of house can tear it down'
    end
    redirect_to houses_path
  end

  private
  def house_params
    params.require(:house).permit(:house_name, :moto, :sigil, :house_photo_url)
  end
end
