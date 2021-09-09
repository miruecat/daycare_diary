class ChildChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    child = Child.find(params[:id])
    stream_for child
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
