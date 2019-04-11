class TicketsController < ApplicationController
  def create
    @ticket = Ticket.create(params[:ticket])

  end

  def update
    @ticket = Ticket.find(params[:id])

  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
  end

end
