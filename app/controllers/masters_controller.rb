class MastersController < ApplicationController
  def index
    @masters = Master.all
  end

  def new
  end

  def create
    @master = Master.new(master_params)
    @master.save!
    redirect_to @master
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    @master = Master.find(params[:id])
  end

  private
  def master_params
    params.require(:master).permit(:first_name, :last_name, :age, :slary, :education)
  end
end
