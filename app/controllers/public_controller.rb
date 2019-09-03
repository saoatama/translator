class PublicController < ApplicationController
    def root
        @private_articles = Private::Article.all
    end
    
    def show
        @private_article = Private::Article.find(params[:id])
        @file = File.open("./public#{@private_article.path}", "r")
    end
end
