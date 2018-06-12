class StudentsController < ApplicationController

  def index
    @studnts=Student.all
  end
  def new


  end

  def create
@student = Student.create(strong_params(:first_name,:last_name))
redirect_to student_path(@student)
  end

  def show
@student=Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
@student = Student.find(params[:id])
@student.update(strong_params(:first_name,:last_name))
redirect_to student_path(@student)
  end

private
def strong_params(*args)
  params.require(:student).permit(*args)

end
end
