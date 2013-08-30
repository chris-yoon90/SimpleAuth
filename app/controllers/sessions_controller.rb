class SessionsController < ApplicationController
	def new

	end

	def create
		user = User.find(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to root_path, notice: "Logged in!"
		else
			render 'new'
		end
	end

	def destroy

	end
end
