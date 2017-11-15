require 'rails_helper'

describe Piece do
  it { should belong_to :user }
  it { should have_many :reviews }
  it { should have_many :ratings }
  
  it { should validate_presence_of :title }
  it { should validate_presence_of :artist }
  it { should validate_presence_of :created }
  it { should validate_presence_of :image }
end
