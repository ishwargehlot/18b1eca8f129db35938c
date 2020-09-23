class Tvshow < ApplicationRecord
   belongs_to :channal ,optional: true
   
   validates :title,:channal_id,presence: true
   
   # schedular favourite email
   def self.favourite_email_send
   		@tvshows = Tvshow.where(status: true)
   		
   		from_mins_ago = 30.minutes.ago.change(sec: 0)
		to_mins_ago = from_mins_ago.change(sec: 59) 
		
	    @tvshows = @tvshows.where(showtime: from_mins_ago..to_min_ago)
   		if @tvshows.count > 0
			 TvshowMailer.favourite_email(@tvshows).deliver_now
   		end
  	end


end
