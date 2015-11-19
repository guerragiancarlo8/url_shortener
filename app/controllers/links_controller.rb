class LinksController < ApplicationController
	def index
		 
		 url = Link.redirect_to_other_url(params[:shortlink])
		 redirect_to url

	end

end
