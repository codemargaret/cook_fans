class Review < ActiveRecord::Base
  belongs_to :piece

  validates :body, :presence => true
end
