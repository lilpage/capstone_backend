class Api::FavoritesController < ApplicationController

  def index
    @favs = Favorite.all
    render "index.json.jb"
  end

  def create
    fav = Favorite.new(
      user_id: params[:user_id],
      recipe_id: params[:recipe_id]
    )
    if fav.save
      render json: { message: "Favorited" }, status: :created
    else
      render json: { errors: fav.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    fav = Fav.find_by(id: params[:id])
    if fav.destroy
      render json: {message: "Successfully delete!"}
    else
      render json: { errors: fav.errors.full_messages }, status: :bad_request
    end
  end

end
