class CoursesController < ApplicationController
  before_action :is_admin_user, only: [:edit, :new, :create, :update, :destroy]
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.save!
    redirect_to @course
  end

  def update
    @course.update(course_params)
    redirect_to @course
  end

  def edit
    @course
  end

  def destroy
    @course.destroy
    redirect_to @course
  end

  def show
    @course
    @cohorts = Cohort.where(course_id: @course.id)
  end

  private
  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :hours)
  end

  def is_admin_user
    if current_user.userable_type != "Admin"
      flash[:notice] = 'Only admins can do it!'
      redirect_to(:action => 'index')
      return false
    end
  end

end
