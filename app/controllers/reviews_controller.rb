class ReviewsController < ApplicationController
  before_action :set_post

  def new
    @review = Review.new
  end

  def create
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
