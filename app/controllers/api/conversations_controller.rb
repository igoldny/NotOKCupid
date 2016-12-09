class Api::ConversationsController < ApplicationController

  def index
    @conversations =
      Conversation.where("user_one_id = ? OR user_two_id = ?", current_user.id, current_user.id)
    render :index
  end

  def create
    @conversation = Conversation.new(conversation_params)
    @messages = @conversation.messages

    if @conversation.save
      render :show
    else
      render json: @conversation.errors, status: 422
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages.order(created_at: :asc)
    render :show
  end

  private

  def conversation_params
    params.require(:conversation).permit(:user_one_id, :user_two_id)
  end
end
