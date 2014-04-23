class HomeController < ApplicationController
	before_filter :load_tweet
 #before_filter :count
    
  def load_tweet
  	@count =[]
    @ten_Name = []
    @time = []
    @last = Trends.last(10)
      @last.each do |d|
          @ten_Name << d.trendName
      end
      @trendsData = Trends.where(trendName: @ten_Name[0])
      @trendsData.each do |d|
        @count << d.trendCounts
        @time << d.created_at.to_i*1000
      end
      @pankaj = Array.new(@count.length){Array.new(2) {0} }
      for i in 0..(@count.length-1)
        @pankaj[i][0] = @time[i].to_i
        @pankaj[i][1] = @count[i]  
      end
      @trend_name = @ten_Name[0]

  end 

  def getTrendData
  	foo = params[:foo_params]

  	  @count = []
    	@time = []
      
    	@trendsData = Trends.where(trendName: foo)
    	@trendsData.each do |d|
    		@count << d.trendCounts
    		@time << d.created_at.to_i*1000
        @trend_name = d.trendName
    	end
    	@pankaj = Array.new(@count.length) {Array.new(2) {0} }
    	for i in 0..(@count.length-1)
    		@pankaj[i][0]= @time[i]
    		@pankaj[i][1]= @count[i]	
    	end
  end


end

