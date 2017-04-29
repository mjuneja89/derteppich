class Mailer < ApplicationMailer
	def newenquiry(contact)
		@contact = contact
        mail(from: "Der Teppich Enquiries", to: "mj@gabblin.com", subject: "New Enquiry")
	end
end
