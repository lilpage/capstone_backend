class Api::UsersController < ApplicationController
  def show
    @user = current_user
    render "show.json.jb"
  end
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user.destroy
      render json: { message: "We're sad to see you go! Goodbye!" }
    else
      render json: {errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
