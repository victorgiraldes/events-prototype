class Api::V1::CommentsController < ApplicationController

  respond_to :json

  def index
    comments = Comment.all
    render json: comments, status: 200
  end

  def comments_reports
    comments = Comment.reported
    render json: comments, status: 200
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, status: 201
    else
      render json: { errors: comment.errors }, status: 422
    end
  end

  private

    def comment_params
      params.permit(:text, :user_id, :event_id)
    end

end
