require 'test_helper'

class NewTweetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_tweet = new_tweets(:one)
  end

  test "should get index" do
    get new_tweets_url
    assert_response :success
  end

  test "should get new" do
    get new_new_tweet_url
    assert_response :success
  end

  test "should create new_tweet" do
    assert_difference('NewTweet.count') do
      post new_tweets_url, params: { new_tweet: { content: @new_tweet.content } }
    end

    assert_redirected_to new_tweet_url(NewTweet.last)
  end

  test "should show new_tweet" do
    get new_tweet_url(@new_tweet)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_tweet_url(@new_tweet)
    assert_response :success
  end

  test "should update new_tweet" do
    patch new_tweet_url(@new_tweet), params: { new_tweet: { content: @new_tweet.content } }
    assert_redirected_to new_tweet_url(@new_tweet)
  end

  test "should destroy new_tweet" do
    assert_difference('NewTweet.count', -1) do
      delete new_tweet_url(@new_tweet)
    end

    assert_redirected_to new_tweets_url
  end
end
