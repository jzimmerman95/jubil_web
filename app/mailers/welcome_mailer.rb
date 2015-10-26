class WelcomeMailer < ActionMailer::Base
	default from: "gabe@jubil.co"

	def welcome_submitted_email(welcome)
		
		@welcome = welcome
		mail(to: "gabecorso@aol.com", subject: "Order Submitted")


		# change to greenstogrounds@gmail
	end


end