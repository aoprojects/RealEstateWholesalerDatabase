class SubscribersController < ApplicationController
		
	before_filter :authenticate_user!

	def new
		# stripe gem takes care of all things needed in here
	end

	def update
		# add in token from JS that the user submits. This is the credit card.
		token = params[:stripeToken]

		customer = Stripe::Customer.create(
			card: token,
			# plan is subscription plan that we want to enroll customer in, as we called in in stripe account
			plan: 1001,
			email: current_user.email
			)

		current_user.subscribed = true
		current_user.stripeid = customer.id
		current_user.save

		redirect_to new_listing_path, notice: "You have successfully subscribed, and you may now post yourself as a wholesaler up to 50 times."
	end

end
