    
json.trends @trendsData do |t|
	    json.count t.trendCounts
	    json.time t.created_at
    end


   
