class CohortsController < ApplicationController
  before_action :is_admin_user, only: [:edit, :new, :create, :update, :destroy]
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]
  
  def index
    @cohorts = Cohort.all
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohort_params)
    @cohort.save!
    redirect_to @cohort
  end

  def update
    @cohort.update(cohort_params)
  end

  def edit
    @cohort
  end

  def destroy
    @cohort.destroy
  end

  def show
    @cohort
  end

  private
  def set_cohort
    @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id)
  end

  def is_admin_user
    if current_user.userable_type != "Admin"
      flash[:notice] = 'Only admins can do it!'
      redirect_to(:action => 'index')
      return false
    end
  end

end
