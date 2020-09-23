class PageController < ApplicationController
  
  def index
  	# @channals = Channal.all.includes(:tvshows)
  	@tvshows = Tvshow.all

  	@channalIds = []

  	if params[:search].present?
  		@channalIds = Channal.all.where("(lower(title) like ?)","%#{params[:search].strip.try(:downcase)}%").map { |e| e.id  }

  		@tvshows = @tvshows.where("(lower(title) like ?) or tvshows.channal_id in(?)","%#{params[:search].strip.try(:downcase)}%",@channalIds)
  	end
  	@tvshows = @tvshows.order(title: :asc)
  end
  
end
