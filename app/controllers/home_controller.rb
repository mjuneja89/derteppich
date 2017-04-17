class HomeController < ApplicationController
	def home
		@handtufted = Carpet.where(:category => 'hand tufted')
		@handloomweave = Carpet.where(:category => 'handloom weave')
		@handknotted = Carpet.where(:category => 'hand knotted')
		@handloomdurries = Carpet.where(:category => 'handloom durries')
	end
end
