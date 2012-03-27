class DiscussionsController < ApplicationController
  def index
    @discussions = Discussion.all()
  end

  def show
    @discussion = Discussion.find(params[:id])
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = Discussion.new()
    @discussion.board_id = params[:board_id]
    @post = @discussion.posts.build
    @post.author = params[:author]
    @post.text = params[:text]
    @post.file = params[:file]
    @post.added_at = Time.now
    if @discussion.save
      redirect_to @discussion
    else
      @board = Board.find(params[:board])
      render :template => 'boards/show'
    end
  end
end
