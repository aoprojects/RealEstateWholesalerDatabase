class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request = request
		if @contact.deliver
			flash.now[:error] = "Thank you for your message. We appreciate your comments, ideas, feedback, etc."
		else
			flash.now[:error] = 'Cannot send message. Please try again.'
			render :new
		end
	end
end
