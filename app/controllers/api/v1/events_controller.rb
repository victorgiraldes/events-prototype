class Api::V1::EventsController < ApplicationController

  def index
    events = Event.all
    render json: events, status: 200
  end

  def create
      event = Event.new(event_params)
    if event.save
      render json: event, status: 201
    else
      render json: { errors: event.errors }, status: 422
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    render json: event
  end

  private

  def event_params
    params.permit(:name, :description, :lat, :lng)
  end

end
