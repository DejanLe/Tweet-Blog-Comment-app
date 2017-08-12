class AddImageToNewTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :new_tweets, :image, :string
  end
end
