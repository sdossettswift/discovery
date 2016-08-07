class LawOfficeCommentsController < ApplicationController
    def new
      @doc = Doc.find(params[:doc_id])
      @law_office_comment = @doc.law_office_comments.create(law_office_comment_params)
    end

    def create
      @doc = Doc.find(params[:doc_id])
      @law_office_comment = @doc.law_office_comments.create(law_office_comment_params)
      if @law_office_comment.save
        redirect_to doc_path(@doc), notice: "Comment Added"
      else
        render :new
      end
    end

    def index
      @doc = Doc.find(params[:doc_id])
      @law_office_comments = LawOfficeComment.all
    end

    private
      def law_office_comment_params
          params.require(:law_office_comment).permit(:comment)
      end
  end
