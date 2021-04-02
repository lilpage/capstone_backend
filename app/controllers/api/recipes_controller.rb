class Api::RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render "index.json.jb"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @recipe = Recipe.new(
      name: params[:name],
      ingredients: params[:ingredients],
      directions: params[:directions],
    )
    #happy/sad
    if @recipe.save
      render "show.json.jb"
    else
      render json: {message: "uh oh!"}
    end
  end

  def update 
    # or statement bug?
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.name = params[:name] || @recipe.name
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.directions = params[:directions] || @recipe.directions
    #happy/sad
    if @recipe.save
      render "show.json.jb"
    else
      render json: {message: "uh oh!"}
    end
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    #happy/sad
    if recipe.delete
      render json: {message: "Deleted!"}
    else
      render json: {message: "whoops!"}
    end
  end

end
