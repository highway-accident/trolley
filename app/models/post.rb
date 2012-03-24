class Post < ActiveRecord::Base
  validates :file, :presence => true

  belongs_to :discussion
end
