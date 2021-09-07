class ActivitiesController < ApplicationController
  before_action :set_activity, only: [ :new, :show, :edit, :update ]

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    if child_id = params.dig(:activity, :children_id)
      @activity = Activity.new(activity_params)
      authorize @activity
      if params.dig(:activity, :sub_category).kind_of?(Array)
        @activity.sub_category = params.dig(:activity, :sub_category).join(" ")
      else
        @activity.sub_category = params.dig(:activity, :sub_category)
      end
      @activity.child_id = child_id
      @activity.user = current_user
      authorize @activity
      @activity.save
      redirect_to child_path(child_id)
    else
      children_ids =  params.dig(:children_ids)
      if children_ids == nil
        render "children/index"
      else
        children_ids.each do |child_id|
          @activity = Activity.new(activity_params)
          if params.dig(:activity, :sub_categories).kind_of?(Array)
            @activity.sub_category = params.dig(:activity, :sub_categories).join(" ")
          else
            @activity.sub_category = params.dig(:activity, :sub_category)
          end
          @activity.child_id = child_id
          @activity.user = current_user
          authorize @activity
          @activity.save
        end
        redirect_to children_path(current_user.daycare)
      end
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
    @activity = Activity.find(params[:id])
    @child = @activity.child_id
    authorize @activity
    @activity.destroy
    redirect_to child_path(@child)
  end

  private

  def activity_params
    params.require(:activity).permit(:category, :date, :time, :comment, :sub_category, sub_categories:[], pictures:[])
  end

  def set_activity
    @child = Child.find(params[:child_id])
  end
end
