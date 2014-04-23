class TrendsController < ApplicationController

	
  def index
  	@allTrends = Trends.all
  	@trendsData = Trends.where(trendName: "#NEONLIGHTSTOURSA")
  end
end
