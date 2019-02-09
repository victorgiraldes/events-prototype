class Api::V1::CommentsController < Api::V1::BaseController

  respond_to :json

  def index
    comments = Comment.All
  end

  def create
    comment = Comment.new(comments_params)
    if comment.save
      render json: comment, status: 201
    else
      render json: { errors: comment.errors }, status: 422
    end
  end

  private

  def comments_params
      params.require(:comment).permit(:text, :user_id, :event_id)
  end

end
