desc "This task is called by the Heroku scheduler add-on"
task :update_tweets => :environment do
  puts "Updating Tweets..."
  Tweet.update_tweets
  puts "done."
end