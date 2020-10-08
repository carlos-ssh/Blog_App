class CommentsController < ApplicationController
    #Create an authentication by user to delete comments
    #http_basic_authenticate_with name: "Charly", password: "secret", only: :destroy

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to articles_path(@article)
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to articles_path(@article)
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end
