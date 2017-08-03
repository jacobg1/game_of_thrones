class CharactersController < ApplicationController
  #new
  def new
    @house = House.find(params[:house_id])
    @character = @house.characters.new
  end

  #create
  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to @house
  end

  #show
  def show
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end
  #edit



  #update

  #destroy
  private
  def character_params
    params.require(:character).permit(:char_name, :photo_url)
  end
end
