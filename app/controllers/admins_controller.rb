class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
    @admin.build_user
  end

  def create
    @admin = Admin.new(admin_params)
    @admin.save!
    redirect_to @admin
  end

  def update
    @admin.update(admin_params)
  end

  def edit
    @admin
  end

  def destroy
    @admin.destroy
  end

  def show
    @admin
  end

  private
  def set_admin
    @admin = Admin.find(params[:id])
  end

  def admin_params
    params.require(:admin).permit(
      :first_name,
      :last_name,
      :user_attributes => [
        :email,
        :password
      ]
    )
  end
end
