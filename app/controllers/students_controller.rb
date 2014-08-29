class StudentsController < ApplicationController
  def index
    @students = Student.all
    render('students/index.html.erb')
  end
end
