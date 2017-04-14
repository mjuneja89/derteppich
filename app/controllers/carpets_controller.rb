class CarpetsController < ApplicationController
    
    def handtufted
    end

    def handloomweave
    end

    def handloomdurries
    end

    def new
       @carpet = Carpet.new
    end

    def create
       @carpet = Carpet.new(carpet_params)	
       if @carpet.save
       	redirect_to adminview_path
       else
       	render 'new'
       end
    end

    def show
    	@carpet = Carpet.find(params[:id])
    end

    def edit
    	@carpet = Carpet.find(params[:id])
    end

    def update
    	@carpet = Carpet.find(params[:id])
    	if @carpet.update_attributes(award_params)
    		redirect_to 'adminview_path'
    	else
    		render 'edit'
    	end
    end

    def index
        @carpets = Carpet.all
    end

    private

    def carpet_params
    	params.require(:carpet).permit(:name, :description, :category, :photo)
    end

end
