class MastersController < ApplicationController
  before_action :set_master, only: [:show, :edit, :update, :destroy]

  def index
    @masters = Master.all
  end

  def new
    @master = Master.new
    @master.build_user
  end

  def create
    @master = Master.new(master_params)
    @master.save!
    redirect_to @master
  end

  def update
    @master.update(master_params)
  end

  def edit
    @master
  end

  def destroy
    @master.destroy
  end

  def show
    @master = Master.find(params[:id])
  end

  private
  def set_master
    @master = Master.find(params[:id])
  end

  def master_params
    params.require(:master).permit(
      :first_name,
      :last_name,
      :age,
      :salary,
      :education,
      :user_attributes => [
        :email,
        :password
      ]
    )
  end
end
