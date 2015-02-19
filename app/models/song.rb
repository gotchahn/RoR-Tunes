class Song < ActiveRecord::Base
  belongs_to :album

  validates_presence_of :title
  validates_numericality_of :duration, greater_than_or_equal_to: 0
end
