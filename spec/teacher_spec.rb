require 'rails_helper'

describe Teacher do
  it { should validate_presence_of :name }
end
