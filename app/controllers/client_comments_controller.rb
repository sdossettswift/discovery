class ClientCommentsController < ApplicationController
  def new
    @doc = Doc.find(params[:doc_id])
    @client_comment = @doc.client_comments.create(client_comment_params)
  end

  def create
    @doc = Doc.find(params[:doc_id])
    @client_comment = @doc.client_comments.create(client_comment_params)
    if @client_comment.save
      redirect_to doc_path(@doc), notice: "Comment Added"
    else
      render :new
    end
  end

  def index
    @doc = Doc.find(params[:doc_id])
    @client_comments = ClientComment.all
  end

  private
    def client_comment_params
        params.require(:client_comment).permit(:comment)
    end

end
