class Piece < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_many :ratings

  validates :title, :presence => true
  validates :artist, :presence => true
  validates :created, :presence => true
  validates :image, :presence => true

  scope :sort_alpha, -> {order(title: :asc)}
  scope :sort_date, -> {order(created_at: :desc).limit(10)}

end
