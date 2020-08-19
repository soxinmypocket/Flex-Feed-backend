class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments
    end

  def create 
    #byebug
        @picture = Picture.find_by(id: params[:picture_id])
        @comment = Comment.create(comment_params)
        render json: @comment
  end

  private

  def comment_params
    params.permit(:content, :picture_id)
  end
   


end
