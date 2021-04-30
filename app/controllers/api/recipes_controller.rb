class Api::RecipesController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  before_action :authenticate_admin, except: [:index, :show]


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
      directions: params[:directions],
      image: params[:image],
    )
    #happy/sad
    if @recipe.save
      render "show.json.jb", status: :created
    else
      render json: { errors: @recipe.errors.full_messages }, status: :bad_request
    end
  end

  def update 
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.name = params[:name] || @recipe.name
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.image = params[:image] || @recipe.image
    #happy/sad
    if @recipe.save
      render "show.json.jb"
    else
      render json: { errors: @recipe.errors.full_messages }, status: :bad_request
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
