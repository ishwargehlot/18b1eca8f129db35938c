class PageController < ApplicationController
  
  def index
  	# @channals = Channal.all.includes(:tvshows)
  	@tvshows = Tvshow.all
  	if params[:search].present?
  		@tvshows = @tvshows.where("(lower(title) like ?)","%#{params[:search].strip.try(:downcase)}%")
  	end
  	@tvshows = @tvshows.order(title: :asc)
  end
  
end
