class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def create
    @student = Student.create(strong_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end
  
  def new; end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(strong_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def strong_params(*args)
    params.require(:student).permit(*args)
  end
end
