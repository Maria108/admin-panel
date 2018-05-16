class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.new(student_params)
    @student.save!
    redirect_to @student
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end

end
