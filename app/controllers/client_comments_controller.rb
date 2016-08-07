class ClientCommentsController < ApplicationController
  def new
    @document = Document.find(params[:document_id])
    @client_comment = @document.client_comments.create(client_comment_params)
  end

  def create
    @document = Document.find(params[:document_id])
    @client_comment = @document.client_comments.create(client_comment_params)
    if @client_comment.save
      redirect_to document_path(@document), notice: "Comment Added"
    else
      render :new
    end
  end

  def index
    @document = Document.find(params[:document_id])
    @client_comments = ClientComment.all
  end

  private
    def client_comment_params
        params.require(:client_comment).permit(:comment)
    end

end
