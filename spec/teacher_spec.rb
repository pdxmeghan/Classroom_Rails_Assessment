require 'rails_helper'

describe Teacher do
  it { should validate_presence_of :name }
  it { should have_many :courses }
end
