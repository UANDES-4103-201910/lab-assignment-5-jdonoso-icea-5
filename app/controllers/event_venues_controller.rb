class EventVenuesController < ApplicationController
  def create
    @event_venue = EventVenue.create(params[:event_venue])
  end

  def update
    @event_venue = EventVenue.find(params[:id])

  end

  def destroy
    @event_venue = EventVenue.find(params[:id])
    @event_venue.destroy
  end
end
