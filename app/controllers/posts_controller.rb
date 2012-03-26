class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @discussion = Discussion.find(params[:discussion_id])
    @post = @discussion.posts.create(params[:post])
    redirect_to discussion_path(@discussion)
  end
end
