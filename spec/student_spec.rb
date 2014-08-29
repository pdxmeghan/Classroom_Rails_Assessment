require 'rails_helper'

describe Student do
  it { should validate_presence_of :name }
  it { should validate_presence_of :course_id }
  it { should belong_to :course }
end
