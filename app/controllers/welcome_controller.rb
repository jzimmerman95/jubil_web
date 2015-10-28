class WelcomeController < ApplicationController
	skip_before_action :verify_authenticity_token


	def index
	end

	def create

		params.permit!
		parm = params
		@welcome = Welcome.new
		@welcome.fName = params[:first_name]
		@welcome.lName = params[:last_name]

		@welcome.email = params[:email]

		@welcome.message = params[:message]
		@welcome.company = params[:company]
		@welcome.number = params[:phone]

		if @welcome.save
		redirect_to root_path
		end
	end

end
