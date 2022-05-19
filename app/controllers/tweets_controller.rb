class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order(created_at: "DESC")

  end
  
  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    @tweets = Tweet.all.order(created_at: "DESC")

    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:room_size_id, :room_type_id, :space_id, :room_name, :image, :room_explain).merge(user_id: current_user.id)
  end
end
