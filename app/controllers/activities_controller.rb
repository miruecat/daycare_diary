class ActivitiesController < ApplicationController
  before_action :set_activity, only: [ :new, :show, :edit, :update, :destroy ]

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    if child_id = params.dig(:activity, :children_id)
      @activity = Activity.new(activity_params)
      @activity.child_id = child_id
      @activity.user = current_user
      authorize @activity
      @activity.save!
      redirect_to child_path(child_id)
    else  
      children_ids = params.dig(:activity, :children_ids)
      children_ids.each do |child_id|
        @activity.new(activity_params)
        @activity.child_id = child_id
        @activity.user = current_user
        @activity.save
      end
      redirect_to daycare_path(current_user.daycare)
    end
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    if @activity.save
      redirect_to child_path(@child)
    else
      render new
    end
  end

  def destroy
    @activity.destroy
    redirect_to child_path(@child)
  end

  private

  def activity_params
    params.require(:activity).permit(:category, :date, :time, :comment, :sub_category)
  end

  def set_activity
    @child = Child.find(params[:child_id])
  end
end
