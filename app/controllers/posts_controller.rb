class PostsController < ApplicationController

  POSTS = {
    '1' => { title: 'First Post', body: 'This is the first post' },
    '2' => { title: 'Second Post', body: 'This is the second post' },
    '3' => { title: 'Third Post', body: 'This is the third post' }
  }

  def index
    @posts = if params[:search].present?
               POSTS.select { |id, post| post[:title].downcase.include?(params[:search].downcase) }
             else
               POSTS
             end
  end
end
