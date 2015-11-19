class Link < ActiveRecord::Base
	def self.redirect_to_other_url link
		#the first is done so that it doesn't return an array and 
		#we can thus access the object's attributes

		rout_url = where(short_url: link).first
		rout_url = rout_url.read_attribute("original_url")
		rout_url
	end

	def self.set_short_url how_long
		char = (0..how_long-1).map { (65+rand(26)).chr}.join
		self.short_url = char
	end

end
