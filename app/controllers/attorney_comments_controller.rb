class AttorneyCommentsController < ApplicationController
  def new
    @document = Document.find(params[:document_id])
    @attorney_comment = @document.attorney_comments.create(attorney_comment_params)
  end

  def create
    @document = Document.find(params[:document_id])
    @attorney_comment = @document.attorney_comments.create(attorney_comment_params)
    if @attorney_comment.save
      redirect_to document_path(@document), notice: "Comment Added"
    else
      render :new
    end
  end

  def index
    @attorney_comments = AttorneyComment.all
  end

  private
    def attorney_comment_params
        params.require(:attorney_comment).permit(:comment)
    end

end
