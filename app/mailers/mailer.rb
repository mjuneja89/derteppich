class Mailer < ApplicationMailer
	def newenquiry(contact)
		@contact = contact
        mail(from: "Der Teppich Enquiries", to: "derteppichinternational@gmail.com", subject: "New Enquiry")
	end
end
