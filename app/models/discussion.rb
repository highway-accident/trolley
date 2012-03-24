class Discussion < ActiveRecord::Base
  belongs_to :board
  has_many :posts
end
