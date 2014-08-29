class StudentsController < ApplicationController
  def index
    @students = Student.all
    render('students/index.html.erb')
  end

  def new
    @student = Student.new
    @courses = Course.all
    render('students/new.html.erb')
  end

  def create
    @student = Student.create(params[:student])
    if @student.save
      flash[:notice] = "Your student has been added"
      redirect_to("/students/#{@student.id}")
    else
      render('students/new.html.erb')
    end
  end

  def show
    @student = Student.find(params[:id])
    @courses = Course.all
    render('students/show.html.erb')
  end
end
