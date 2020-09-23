class PageController < ApplicationController
  
  def index
  	@channals = Channal.all.includes(:tvshows)
  	@channals = @channals.order(title: :asc)
  end
  
end
