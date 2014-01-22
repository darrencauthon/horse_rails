require 'horse'

options = {
            consumer_key:        ENV['CONSUMER_KEY'],
            consumer_secret:     ENV['CONSUMER_SECRET'],
            access_token:        ENV['ACCESS_TOKEN'],
            access_token_secret: ENV['ACCESS_TOKEN_SECRET'],
            twitter_username:    ENV['TWITTER_USERNAME'],
            pending_tweets:      -> { ['you use mysql lol'] }
          }
Horse.setup(options)

Horse.tweet_something_new
