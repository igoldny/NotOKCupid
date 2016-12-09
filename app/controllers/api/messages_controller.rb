class Api::MessagesController < ApplicationController

  def index
    @messages = Message.where("thread_id = ?", :thread_id)
    render :index
  end

  def create
    @message = Message.new(message_params)
    @message.author_id = current_user.id if logged_in?

    if @message.save
      render "api/conversations/show"
    else
      render json: @message.errors, status: 422
    end
  end

  def show
    @message = Message.find(params[:id])

    if @message
      render :show
    else
      render json: @message.errors, status: 422
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :thread_id)
  end

end
