class CommentsController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.create(comment_params)
    redirect_to image_path(@image)
  end

  def destroy
   @image = Image.find(params[:image_id])
   @comment = @image.comments.find(params[:id])
   @comment.destroy
   redirect_to image_path(@image)

  def index
    @image = Image.find(params[:image_id])
    render 'index'
  end

  def show
    @image = Image.find(params[:image_id])
    @comment = @image.comments.find(params[:id])
  end
end

  private
    def comment_params
      params.require(:comment).permit(:commenter)
    end
end
