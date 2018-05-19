class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
    @student.build_user
  end

  def create
    @student = Student.new(student_params)
    @student.save!
    redirect_to @student
  end

  def update
    @student.update(student_params)
  end

  def edit
    @student
  end

  def destroy
    @student.destroy
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(
      :first_name,
      :last_name,
      :age,
      :education,
      :user_attributes => [
        :email,
        :password
      ]
    )
  end
end
