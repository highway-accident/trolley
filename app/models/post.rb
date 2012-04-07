class Post < ActiveRecord::Base
  validates :file, :presence => true

  has_attached_file :file, :styles => { :small => "300x300" }

  belongs_to :discussion
end
