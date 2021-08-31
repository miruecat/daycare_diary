class DaycaresController < ApplicationController
  before_action :set_daycare, only: [ :show, :edit, :update, :destroy ]

  def index
    @daycares = Daycare.all
  end

  def show
  end

  def new
    @daycare = Daycare.new
  end

  def create
    @daycare = Daycare.new(daycare_params)
    @daycare.daycare_id = current_user.daycare_id
    if @daycare.save
      redirect_to daycare_path(@daycare)
    else
      render new
    end
  end

  def edit
  end

  def update
    if @daycare.update(daycare_params)
      redirect_to daycare_path(@daycare)
    else
      render new
    end
  end

  def destroy
    @daycare.destroy
    redirect_to daycare_path
  end

  private

  def daycare_params
    params.require(:daycare).permit(:name)
  end

  def set_daycare
    @daycare = Daycare.find(params[:id])
  end
end
