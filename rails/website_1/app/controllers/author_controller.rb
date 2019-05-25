class AuthorController < ApplicationController
    def index
        @posts = Post.all
    end

    def create
        Post.create(person: params[:name], description: params[:description])
        redirect_to :root
    end

    def delete
        Post.find(params[:id]).destroy
        redirect_to :root
    end

    def edit
        Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.name = params[:name]
        @post.description = params[:description]
        @post.save
        redirect_to :root
    end
end
