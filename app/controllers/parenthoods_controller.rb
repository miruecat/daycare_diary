class ParenthoodsController < ApplicationController
  def create
    @parenthood = Parenthood.new(parenthood_params)
    authorize @parenthood
    @child = Child.find(params[:child_id])
    @parenthood.child = @child
    if @parenthood.save
      redirect_to child_path(@child)
    else
      redirect_to children_path
    end
  end

  private

  def parenthood_params
    params.require(:parenthood).permit(:child_id, :user_id)
  end
end
