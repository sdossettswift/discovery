class AttorneyCommentsController < ApplicationController
  def new
    @doc = Doc.find(params[:doc_id])
    @attorney_comment = @doc.attorney_comments.create(attorney_comment_params)
  end

  def create
    @doc = Doc.find(params[:doc_id])
    @attorney_comment = @doc.attorney_comments.create(attorney_comment_params)
    if @attorney_comment.save
      redirect_to doc_path(@doc), notice: "Comment Added"
    else
      render :new
    end
  end

  def index
    @doc = Doc.find(params[:doc_id])
    @attorney_comments = @doc.attorney_comments.all
  end

  private
    def attorney_comment_params
        params.require(:attorney_comment).permit(:comment)
    end

end
