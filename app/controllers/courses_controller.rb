class CoursesController < ApplicationController
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
  end

  def edit
    @course
  end

  def destroy
    @course.destroy
  end

  def show
    @course
  end

  private
  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :hours)
  end

end
