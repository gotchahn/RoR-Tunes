class Singer < ActiveRecord::Base
  validates_uniqueness_of :twitter, allow_blank: true
  validates_presence_of :name
  has_many :albums

  def self.gender_options
    ["MASCULINO", "FEMENINO"]
  end

end
