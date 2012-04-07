class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_boards

  def load_boards
    @boards = Board.all
  end

end
