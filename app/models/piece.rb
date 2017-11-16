class Piece < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_many :ratings

  validates :title, :presence => true
  validates :artist, :presence => true
  validates :created, :presence => true
  validates :image, :presence => true

  default_scope {order(title: :asc)}
end
