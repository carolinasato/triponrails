class CommentsController < ApplicationController
    def create
        @country = Country.find(params[:country_id])
        @comment = @country.comments.create(comment_params)
        redirect_to @country
    end

    def comment_params
        params.require(:comment).permit!
    end
end
