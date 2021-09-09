class MessagesController < ApplicationController
  skip_after_action :verify_authorized

  def create
    @child = Child.find(params[:child_id])
    @message = Message.new(params_message)
    @message.child = @child
    @message.user = current_user

    if @message.save
      ChildChannel.broadcast_to(@child, render_to_string(partial: "message", locals: { message: @message }))
      redirect_to child_path(@child, anchor: "messages")
    else
      render "children/show"
    end
  end

  private

  def params_message
    params.require(:message).permit(:content)
  end
end
