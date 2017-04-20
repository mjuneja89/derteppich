class SearchController < ApplicationController
	def search
		if params[:search]
			@carpets = Carpet.search(params[:search])
		end
	end
end
