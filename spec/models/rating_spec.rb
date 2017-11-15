require 'rails_helper'

describe Rating do
  it { should belong_to :piece }

  it { should validate_presence_of :rate }
end
