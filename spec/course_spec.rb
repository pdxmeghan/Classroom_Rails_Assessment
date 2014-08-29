require 'rails_helper'

describe Course do
  it { should validate_presence_of :name }
  it { should validate_presence_of :teacher_id }
  it { should belong_to :teacher}
  it { should have_many :students}
end
