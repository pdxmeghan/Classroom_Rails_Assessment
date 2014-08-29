class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    @courses = Course.all
    render('teachers/index.html.erb')
  end

  def new
    @teacher = Teacher.new
    render('teachers/new.html.erb')
  end

  def create
    @teacher = Teacher.create(params[:teacher])
    if @teacher.save
      flash[:notice] = "Your teacher has been added"
      redirect_to("/teachers/#{@teacher.id}")
    else
      render('teachers/new.html.erb')
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
    @courses = @teacher.courses
    render('teachers/show.html.erb')
  end

  def edit
    @teacher = Teacher.find(params[:id])
    render('teachers/edit.html.erb')
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(params[:teacher])
      flash[:notice] = "Your teacher has been updated"
      redirect_to("/teachers/#{@teacher.id}")
    else
      render('teachers/edit.html.erb')
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    flash[:notice] = "Your teacher has been deleted"
    redirect_to('/teachers')
  end
end
