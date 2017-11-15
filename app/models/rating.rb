class Rating < ActiveRecord::Base
  belongs_to :piece

  validates :rate, :presence => true
end
