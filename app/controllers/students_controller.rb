class StudentsController < ApplicationController
  before_action :is_admin_user, only: [:edit, :new, :create, :update, :destroy]  
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
    redirect_to @student
  end

  def edit
    @student
  end

  def destroy
    @student.destroy
    redirect_to @student
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
      :cohort_id,
      :user_attributes => [
        :email,
        :password
      ]
    )
  end

  def is_admin_user
    if current_user.userable_type != "Admin"
      flash[:notice] = 'Only admins can do it!'
      redirect_to(:action => 'index')
      return false
    end
  end
end
