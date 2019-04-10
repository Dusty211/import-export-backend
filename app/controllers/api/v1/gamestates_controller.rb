class Api::V1::GamestatesController < ApplicationController

  def create
    @gamestate = Gamestate.new(gamestate_params)

    # byebug

    if @gamestate.save
      render json: { gamestate: @gamestate }, status: :created
    else
      render json: { error: 'failed to create gamestate' }, status: :not_acceptable
    end
  end

  # def index
  #   render json: Gamestate.where(user_id: params[:user_id])
  # end
  #
  # def create
  #   render json: Gamestate.create(gamestate_params)
  # end
  #
  # def update
  #   Gamestate.find(params[:id]).update(gamestate_params)
  #   render json: Gamestate.find(params[:id])
  # end
  #
  # def show
  #   render json: Gamestate.find(params[:id])
  # end

  private

  def gamestate_params
    params.require(:gamestate).permit(:company_name, :cash, :luck, :karma, :heat, :streetcred, :xships, :ship_lvl, :xmercs, :user_id, :savename)
  end

end
