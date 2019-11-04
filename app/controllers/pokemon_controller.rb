class PokemonController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to "/"

  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health = @pokemon.health - 10
    @pokemon.save
    if @pokemon.health <=0
      @pokemon.delete
    end
    redirect_to trainer_path(current_trainer)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    puts(params)
    params.permit(:name, :ndex)
    @pokemon = Pokemon.new
    temp = params[:pokemon]
    @pokemon.name = params[:pokemon][:name]
    @pokemon.trainer = current_trainer
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.ndex = temp[:ndex]
    if @pokemon.save
      redirect_to trainer_path(current_trainer)

    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to  new_path
    end


  end
end
