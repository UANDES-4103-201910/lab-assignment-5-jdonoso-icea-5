class EventsController < ApplicationController
  def create
    @event = Event.create(params[:event])
  end

  def update
    @event = Event.find(params[:id])

  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end
end
