class NewTweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_new_tweet, only: [:show, :edit, :update, :destroy]

  # GET /new_tweets
  # GET /new_tweets.json
  def index
    @new_tweets = NewTweet.all
  end

  # GET /new_tweets/1
  # GET /new_tweets/1.json
  def show
  end

  # GET /new_tweets/new
  def new
    @new_tweet = NewTweet.new
  end

  # GET /new_tweets/1/edit
  def edit
  end

  # POST /new_tweets
  # POST /new_tweets.json
  def create
    @new_tweet = NewTweet.new(new_tweet_params)

    respond_to do |format|
      if @new_tweet.save
        format.html { redirect_to @new_tweet, notice: 'New tweet was successfully created.' }
        format.json { render :show, status: :created, location: @new_tweet }
      else
        format.html { render :new }
        format.json { render json: @new_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_tweets/1
  # PATCH/PUT /new_tweets/1.json
  def update
    respond_to do |format|
      if @new_tweet.update(new_tweet_params)
        format.html { redirect_to @new_tweet, notice: 'New tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_tweet }
      else
        format.html { render :edit }
        format.json { render json: @new_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_tweets/1
  # DELETE /new_tweets/1.json
  def destroy
    @new_tweet.destroy
    respond_to do |format|
      format.html { redirect_to new_tweets_url, notice: 'New tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_tweet
      @new_tweet = NewTweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_tweet_params
      params.require(:new_tweet).permit(:content, :image)
    end
end
