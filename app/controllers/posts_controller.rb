class PostsController < ApplicationController

  # POSTS = {
  #   '1' => { title: 'First Post', body: 'This is the first post' },
  #   '2' => { title: 'Second Post', body: 'This is the second post' },
  #   '3' => { title: 'Third Post', body: 'This is the third post' }
  # }

  def index
    # @posts = if params[:search].present?
    #            POSTS.select { |_id, post| post[:title].downcase.include?(params[:search].downcase) }
    #          else
    #            POSTS
    #          end
    @posts = Post.all
  end

  def show
    # @post = POSTS[params[:id]]
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params).save
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
