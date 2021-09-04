class ParenthoodsController < ApplicationController
  def create
    @parenthood = Parenthood.new(parenthood_params)
    if @parenthood.save
      redirect_to child_path(@child)
  end

  private

  def parenthood_params
    params.permit(:parenthood).requires(:child_id, :user_id)
  end
end
