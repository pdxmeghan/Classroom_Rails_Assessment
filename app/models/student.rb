class Student < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :course_id
  belongs_to :course
end
