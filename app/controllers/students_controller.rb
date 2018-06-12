class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params.require(:student))
    @student.save
    redirect_to @student
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to @student
  end

  def destroy
    @student.find(params[:id]).delete
  end

  # private
  #
  #   def student_params(*args)
  #     params.require(:student).permit(*args)
  #   end
end
