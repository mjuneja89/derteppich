class CarpetsController < ApplicationController
    
    def handtufted
        @handtufted = Carpet.where(:category => 'hand tufted')
    end

    def handloomweave
        @handloomweaves = Carpet.where(:category => 'handloom weave')
    end

    def handloomdurries
        @handloomdurries = Carpet.where(:category => 'handloom durries')
    end
    
    def handknotted
        @handknotted = Carpet.where(:category => 'hand knotted')
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

    def destroy
        @carpet = Carpet.find(params[:id])
        Carpet.destroy(@carpet)
        redirect_to carpets_path
    end

    private

    def carpet_params
    	params.require(:carpet).permit(:name, :description, :category, :photo)
    end

end
