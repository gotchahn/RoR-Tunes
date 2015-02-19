class Album < ActiveRecord::Base
  validates_presence_of :title, :production_label
  validates_numericality_of :price, greater_than_or_equal_to: 0

  belongs_to :singer
  has_many :songs
end
