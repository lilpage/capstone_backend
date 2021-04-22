class Api::FridgesController < ApplicationController

  def index
    @fridges = Fridge.all #where(user_id: current_user.id)
    render "index.json.jb"
  end

  def create
    @fridge = Fridge.new(
      ingredient_id: params[:ingredient_id],
      user_id: params[:user_id],
    )
    if @fridge.save
      render "show.json.jb"
    else
      render json: {errors: @fridge.errors.full_messages}, status: bad_request
    end
  end

  def destroy
    fridge = Fridge.find_by(id: params[:id])
    if fridge.delete
      render json: {message: "Successfully destroyed"}
    else
      render json: {errors: @fridge.errors.full_messages}, status: bad_request
    end
  end


end