class LinksController < ApplicationController
	def index
		 
		 url = Link.redirect_to_other_url(params[:shortlink])
		 redirect_to url

	end

	def test
		link = Link.set_short_url(3)
		puts link
	end
end
