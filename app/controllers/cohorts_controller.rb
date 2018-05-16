class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def new
  end

  def create
    @cohort = Cohort.new(cohort_params)
    @cohort.save!
    redirect_to @cohort
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  private
  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id)
  end

end
