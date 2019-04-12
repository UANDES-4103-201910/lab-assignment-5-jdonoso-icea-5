class TicketTypesController < ApplicationController
  def create
    @ticket_type = TicketType.create(params[:ticket_type])

  end

  def update
    @ticket_type = TicketType.find(params[:id])

  end

  def destroy
    @ticket_type = TicketType.find(params[:id])
    get
    @ticket_type.destroy
  end
end


