class TicketsController < ApplicationController
	
	def index
		@tickets = Ticket.all
	end

	def show
		@ticket = Ticket.find(params[:id])
	end

	def new
		@ticket = Ticket.new(ticket_params)
	end

	def create
		@ticket = Ticket.new(ticket_params)

		if @ticket.save
			redirect_to @ticket
		else
			render :new
		end
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])
		
		if @ticket.update(ticket_params)
			redirect_to @ticket
		else
			render :edit
		end
	end

	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.delete
		redirect_to tickets_path
	end

	private

	def ticket_params
		params.require(:ticket).permit(:number, :fio, :first_station_id, :last_station_id, :train_id, :user_id)
	end
end