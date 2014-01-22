require 'horse'
require 'httparty'

desc "Update the cron job"
task :update_the_cron_job do
  system "whenever --update-crontab horse_rails"
end

desc "Tweet something"
task :tweet_something do

  url = 'https://raw.github.com/darrencauthon/horse_rails/master/upcoming_tweets.txt'

  pending_tweets = HTTParty.get(url)
                           .body
                           .split("\n")
                           .map    { |x| x.to_s.strip }
                           .select { |x| x != '' }

  Horse.setup( {
                 consumer_key:        ENV['CONSUMER_KEY'],
                 consumer_secret:     ENV['CONSUMER_SECRET'],
                 access_token:        ENV['ACCESS_TOKEN'],
                 access_token_secret: ENV['ACCESS_TOKEN_SECRET'],
                 twitter_username:    ENV['TWITTER_USERNAME'],
                 pending_tweets:      -> { pending_tweets }
               } )

  Horse.tweet_something_new
end
