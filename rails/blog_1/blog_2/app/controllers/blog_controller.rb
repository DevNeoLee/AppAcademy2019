class BlogController < ApplicationController
    def index
        @posts = Post.all.reverse
    end

    def about
    end

    def create
        Post.create(user: params[:input1], message: params[:input2])
        redirect_to :root
    end

    def delete
        Post.find(params[:id]).destroy
        redirect_to :root
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        object = Post.find(params[:id])
        object.user = params[:input1]
        object.message = params[:input2]
        object.save
        redirect_to :root
    end


end
