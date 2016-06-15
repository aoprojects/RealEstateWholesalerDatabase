class WelcomeMailer < ActionMailer::Base
	layout 'welcome_mailer'
	default from: "Real Estate Wholesaler Database <team@REWholesalerDatabase.com>"

	def welcome_email(current_user)
		@user = current_user
		mail to: current_user.email, subject: "Your New Real Estate Wholesaler Database Account"
	end
end