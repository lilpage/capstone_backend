class Api::FavoritesController < ApplicationController

  def create
    fav = Favorite.new(
      user_id: params[:user_id],
      recipe_id: params[:recipe_id]
    )
    if fav.save
      render json: {message: "Favorited"}
    else
      render json: {message: "uhoh!"}
    end
  end

end
