class CarpetsController < ApplicationController
    
    def handtufted
        @carpets = Carpet.where(:category => 'hand tufted').order(:priority_id).page(params[:page]).per(8) 
    end

    def handloomweave
        @carpets = Carpet.where(:category => 'handloom weave').order(:priority_id).page(params[:page]).per(8) 
    end

    def handloomdurries
        @carpets = Carpet.where(:category => 'handloom durries').order(:priority_id).page(params[:page]).per(8) 
    end
    
    def handknotted
        @carpets = Carpet.where(:category => 'hand knotted').order(:priority_id).page(params[:page]).per(8) 
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
    	if @carpet.update_attributes(carpet_params)
    		redirect_to adminview_path
    	else
    		render 'edit'
    	end
    end

    def index
        @handtufted = Carpet.where(:category => 'hand tufted').order(:priority_id)
        @handloomweave = Carpet.where(:category => 'handloom weave').order(:priority_id)
        @handknotted = Carpet.where(:category => 'hand knotted').order(:priority_id)
        @handloomdurries = Carpet.where(:category => 'handloom durries').order(:priority_id)
    end

    def destroy
        @carpet = Carpet.find(params[:id])
        Carpet.destroy(@carpet)
        redirect_to carpets_path
    end
    
    def editpriority
        @carpet = Carpet.find(params[:carpet_id])
    end

    def updatepriority
        @carpet = Carpet.find(params[:carpet_id])
        if @carpet.update_attributes(category_params)
            redirect_to adminview_path
        end 
    end

    def editcategory
        @carpet = Carpet.find(params[:carpet_id])
    end

    def updatecategory
        @carpet = Carpet.find(params[:carpet_id])
        if @carpet.update_attributes(category_params)
            redirect_to adminview_path
        end 
    end

    private

    def carpet_params
    	params.require(:carpet).permit(:name, :description, :category, :photo, :priority_id)
    end

end
