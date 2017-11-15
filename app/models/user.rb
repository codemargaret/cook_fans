class User < ActiveRecord::Base
  has_many :pieces

  validates :name, :presence => true
end
