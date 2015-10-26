class Welcome < ActiveRecord::Base
	after_save :send_welcome_create_email

	protected 
	def send_welcome_create_email
		WelcomeMailer.welcome_submitted_email(self).deliver
	end
end