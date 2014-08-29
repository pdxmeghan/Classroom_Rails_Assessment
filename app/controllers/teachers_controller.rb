class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    render('teachers/index.html.erb')
  end
end
