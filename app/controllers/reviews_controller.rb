class ReviewsController < ApplicationController
  before_action :set_post

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.post = @post
    @review.save
    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
