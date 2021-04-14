class Api::IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render "index.json.jb"
  end

  def show
    @ingredient = Ingredient.find_by(id: params[:id])
    render "show.json.jb"
  end

end
