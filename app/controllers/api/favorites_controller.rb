class Api::FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    @favs = Favorite.where(user_id: current_user.id)
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
    fav = Favorite.find_by(id: params[:id])
    if fav.destroy
      render json: {message: "Successfully delete!"}
    else
      render json: { errors: fav.errors.full_messages }, status: :bad_request
    end
  end

end
