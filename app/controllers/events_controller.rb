class EventsController < ApplicationController

  def create
    Event.create!(size: create_params[:size], duration: create_params[:duration], project: Project.last)
    render json: { message: "Success" }, status: 200
  end

  private

  def create_params
    params.permit(:size, :duration)
  end

end
