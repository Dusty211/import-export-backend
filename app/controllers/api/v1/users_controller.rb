class Api::V1::UsersController < ApplicationController

  def show
    render json: User.find(params[:id])
  end

  def create
    render json: User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
