class Board < ActiveRecord::Base
  validates :name, :presence => true
  validates :slug, :presence => true
  validates :is_visible, :presence => true
end
