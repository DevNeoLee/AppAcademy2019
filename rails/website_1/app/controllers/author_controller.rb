class AuthorController < ApplicationController
    def index
        @posts = Post.all
    end

    def create
        Post.create(person: params[:name], description: params[:description])
        redirect_to :root
    end
end
