class MessagesController < ApplicationController
  def create
    @child = Child.find(params[:child_id])
    @message = Message.new(params_message)
    @message.child = @child
    @message.user = current_user

    if @message.save
      redirect_to child_path(@child)
    else
      render "children/show"
    end
  end

  private

  def params_message
    params.requires(:message).permit(:content, :child_id, :user_id)
  end
end
