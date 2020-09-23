class TvshowMailer < ApplicationMailer
	
	helper ApplicationHelper
	
	def favourite_email(tvshows)
		@tvshows = tvshows
		email = "gehlotishwar@gmail.com"
		mail(to: email.to_s, subject: "Your Favourite will show start after 30 Minutes")
	end
end
