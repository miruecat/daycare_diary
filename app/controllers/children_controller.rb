class ChildrenController < ApplicationController
  before_action :set_child, only: [ :show, :edit, :update, :destroy ]

  def index
    @children = Child.all
    @children = policy_scope(Child)
  end

  def show
    authorize @child
  end

  def new
    @child = Child.new
    authorize @child
  end

  def create
    @child = Child.new(child_params)
    @child.daycare_id = current_user.daycare_id
    authorize @child
    if @child.save
      redirect_to child_path(@child)
    else
      render new
    end
  end

  def edit
    authorize @child
  end

  def update
    authorize @child
    if @child.update(child_params)
      redirect_to child_path(@child)
    else
      render new
    end
  end

  def destroy
    @child.destroy
    redirect_to children_path
  end

  private

  def child_params
    params.require(:child).permit(:first_name, :last_name, :birthdate, :personal_information, :daycare_id)
  end

  def set_child
    @child = Child.find(params[:id])
  end
end
