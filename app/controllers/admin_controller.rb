class AdminController < ApplicationController
    

    def adminview
    	redirect_to '/login' unless current_user
    end

end
