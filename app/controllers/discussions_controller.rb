class DiscussionsController < ApplicationController
  def index
    @discussions = Discussion.all()
  end

  def show
    @discussion = Discussion.find(params[:id])
    @post = Post.new
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = Discussion.new()
    @post = @discussion.posts.build
    @post.author = params[:author]
    @post.text = params[:text]
    @post.file = params[:file]
    if @discussion.save
      redirect_to @discussion
    else
      @board = Board.find(params[:board])
      render :template => 'boards/show'
    end
  end
end
