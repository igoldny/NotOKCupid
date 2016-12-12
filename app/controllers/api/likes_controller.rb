class Api::LikesController < ApplicationController

  def index
    if like_params[:from_id]
      @likes = Like.where(from_id: params[:from_id])
    elsif like_params[:to_id]
      @likes = Like.where(to_id: params[:to_id])
    end

    if @likes
      render :index
    else
      render json: []
    end
  end

  def create
    @like = Like.new(like_params)


    if @like.save
      @likes = Like.where(from_id: params[:from_id])
      render :index
    else
      render json: []
    end
  end

  def destroy
    @like = Link.find(params[:id])
    @like.destroy
  end

  private

  def like_params
    params.require(:like).permit(:from_id, :to_id)
  end
end
