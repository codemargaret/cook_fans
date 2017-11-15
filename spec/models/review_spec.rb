require 'rails_helper'

describe Review do
  it { should belong_to :piece }

  it { should validate_presence_of :body }
end
