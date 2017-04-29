class ContactsController < ApplicationController
	
	def contact
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			Mailer.newenquiry(@contact).deliver_now
			redirect_to '/contact'
		end
	end
    
    private

    def contact_params
    	params.require(:contact).permit(:name, :email, :description)
    end

end
