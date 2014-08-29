class CoursesController < ApplicationController
  def index
    @courses = Course.all
    render('courses/index.html.erb')
  end

  def new
    @teachers = Teacher.all
    @course = Course.new
    render('courses/new.html.erb')
  end

  def create
    @course = Course.create(params[:course])
    if @course.save
      flash[:notice] = "Your course has been added"
      redirect_to("/courses/#{@course.id}")
    else
      render('courses/new.html.erb')
    end
  end

  def show
    @course = Course.find(params[:id])
    @teachers = Teacher.all
    render('courses/show.html.erb')
  end

  def edit
    @teachers = Teacher.all
    @course = Course.find(params[:id])
    render('courses/edit.html.erb')
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(params[:course])
      flash[:notice] = "Your course has been updated"
      redirect_to("/courses/#{@course.id}")
    else
      render('courses/edit.html.erb')
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Your course has been deleted"
    redirect_to('/courses')
  end
end
