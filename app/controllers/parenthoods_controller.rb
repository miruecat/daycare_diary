class ParenthoodsController < ApplicationController
  def create
    authorize @parenthood
    @parenthood = Parenthood.new(parenthood_params)
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
