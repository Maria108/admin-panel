class CohortsController < ApplicationController
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

end
