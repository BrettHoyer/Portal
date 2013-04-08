require 'grackle'

class Tweet < ActiveRecord::Base
  attr_accessible :created, :message


  	def self.update_tweets
		client = Grackle::Client.new(:auth=>{
		  :type=>:oauth,
		  :consumer_key=>'6Lv9Y8NDoUvx0FTVqhKIXg', :consumer_secret=>'smkv6ymLZ6Khr5d6TPl77EwAZpaKL2QQ71XeEXxN4',
		  :token=>'154367866-JMME4pk1RRZCDH1KSqX9K0cNVlG79GjXdRboELRO', :token_secret=>'yaIyPAgI53cHDTglx2gVNLy7pPh6O72XM3C3kGEOQ'
		})


		if client.users.show? :screen_name=>'bretthoyer' #http://twitter.com/users/show.json?screen_name=some_user
			tweets = client.statuses.user_timeline? :screen_name => 'bretthoyer', :count => 5
			tweets.each do |tweet|
			  created = DateTime.parse(tweet.created_at)
			  unless Tweet.exists?(["created=?", created])
			  Tweet.create({:message => tweet.text, :created => created })	
			  end
			end

		end
	end


	def readable_datetime
		self.created.in_time_zone("Eastern Time (US & Canada)").strftime("%m/%d/%y %I:%M%p")
	end

end
