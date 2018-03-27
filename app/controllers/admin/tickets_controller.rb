class Admin::TicketsController < Admin::BaseController
	def index
		@tickets = Ticket.all
	end

	def show
		@ticket = Ticket.find(params[:id])
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])
		
		if @ticket.update(ticket_params)
			redirect_to [:admin, @ticket]
		else
			render :edit
		end
	end

	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.destroy
		redirect_to admin_tickets_path
	end

	private

	def ticket_params
		params.require(:ticket).permit(:number, :fio, :first_station_id, :last_station_id, :train_id)
	end
end