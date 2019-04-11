class Api::V1::NpcsController < ApplicationController

  def index
    render json: Npc.all
  end

end
