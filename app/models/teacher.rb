class Teacher < ActiveRecord::Base
  validates_presence_of :name
  has_many :courses
end
