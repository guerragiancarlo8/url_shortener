class Link < ActiveRecord::Base
	def self.redirect_to_other_url link
		#the first is done so that it doesn't return an array and 
		#we can thus access the object's attributes

		rout_url = where(short_url: link).first
		rout_url = rout_url.read_attribute("original_url")
		rout_url
	end
end
