class LawOfficeCommentsController < ApplicationController
    def new
      @document = Document.find(params[:document_id])
      @law_office_comment = @document.law_office_comments.create(law_office_comment_params)
    end

    def create
      @document = Document.find(params[:document_id])
      @law_office_comment = @document.law_office_comments.create(law_office_comment_params)
      if @law_office_comment.save
        redirect_to document_path(@document), notice: "Comment Added"
      else
        render :new
      end
    end

    def index
      @law_office_comments = LawOfficeComment.all
    end

    private
      def law_office_comment_params
          params.require(:law_office_comment).permit(:comment)
      end
  end
