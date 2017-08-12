json.extract! new_tweet, :id, :content, :created_at, :updated_at
json.url new_tweet_url(new_tweet, format: :json)
