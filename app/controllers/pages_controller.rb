class PagesController < ApplicationController

	def index
		@tweets = Tweet.find(:all, :order=> 'id desc', :limit => 5).reverse
		@rants = Rant.all
	end



end