class HomeController < ApplicationController
	def home
		@handtufted = Carpet.where(:category => 'hand tufted').limit(4)
		@handloomweave = Carpet.where(:category => 'handloom weave').limit(4)
		@handknotted = Carpet.where(:category => 'hand knotted').limit(4)
		@handloomdurries = Carpet.where(:category => 'handloom durries').limit(4)
	end
end
