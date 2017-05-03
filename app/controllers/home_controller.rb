class HomeController < ApplicationController
	def home
		@handtufted = Carpet.where(:category => 'hand tufted').order(:priority_id).limit(4)
		@handloomweave = Carpet.where(:category => 'handloom weave').order(:priority_id).limit(4)
		@handknotted = Carpet.where(:category => 'hand knotted').order(:priority_id).limit(4)
		@handloomdurries = Carpet.where(:category => 'handloom durries').order(:priority_id).limit(4)
	end
end
