class Api::V1::NpcsController < ApplicationController

  def index
    render json: Npc.all, include: ['jobs.job_options']
  end

end
