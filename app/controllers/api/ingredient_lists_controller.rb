class Api::IngredientListsController < ApplicationController
  def index
    @ingredient_lists = IngredientList.all
    render "index.json.jb"
  end


  # # Do I even need these???? I mean probably not
  # def create
  #   list_item = IngredientList.new(
  #     ingredient_id: params[:ingredient_id],
  #     recipe_id: params[:recipe_id]
  #   )
  #   if list_item.save
  #     render json: { message: "Added!" }, status: :created
  #   else
  #     render json: { errors: list_item.errors.full_messages }, status: :bad_request
  #   end
  # end

  # def destroy
  #   list_item = IngredientList.find_by(id: params[:id])
  #   if list_item.destroy
  #     render json: {message: "Successfully deleted!"}
  #   else
  #     render json: { errors: list_item.errors.full_messages }, status: :bad_request
  #   end
  # end
end
