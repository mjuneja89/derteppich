class SessionsController < ApplicationController
	def new
    end

    def create
    	@user = User.find_by_username(params[:session][:username])
    	if @user && @user.authenticate(params[:session][:password])
    		sign_in @user
            redirect_to "/adminview"
    	else
    	    render 'new'
    	end
    end
end

