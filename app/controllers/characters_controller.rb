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
  def edit
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  #update
  def update
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to house_character_path(@house, @character)
  end

  #destroy
  def destroy
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to houses_path
  end

  private
  def character_params
    params.require(:character).permit(:char_name, :description, :photo_url)
  end
end
