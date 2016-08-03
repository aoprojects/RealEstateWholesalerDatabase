class RegistrationsController < Devise::RegistrationsController

	protected 

	def after_sign_up_path_for(resource)
		new_listing_path
		# this will go to a new listing form after a user is created
	end


end