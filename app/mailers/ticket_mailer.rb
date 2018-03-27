class TicketMailer < ApplicationMailer
	def buy_ticket(user, ticket)
		@user = user
		@ticket = ticket
		mail(to: @user.email, subject: 'Вы создали билет')
	end

	def cancel_ticket(user, ticket)
		@user = user
		@ticket = ticket
		mail(to: @user.email, subject: 'Вы удалили билет')
	end
end
