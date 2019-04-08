class Api::V1::UsersController < ApplicationController

  def show
    render json: User.find(params[:id])
  end

  # pre auth
  # def create
  #   render json: User.create(user_params)
  # end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
