class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
    @discussion = Discussion.new
    @post = @discussion.posts.build
  end
end
