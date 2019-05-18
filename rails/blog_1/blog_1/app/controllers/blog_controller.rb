class BlogController < ApplicationController
    def index
        @posts = Post.all.reverse
    end

    def create
        Post.create(writer: params[:irum], content: params[:naeyong])
        redirect_to :root
    end

    def destroy
        Post.find(params[:id]).destroy
        redirect_to :root
    end

    def update
        pp = Post.find(params[:id])
        pp.writer = params[:irum]
        pp.content = params[:naeyong]
        pp.save
        redirect_to :root
    end
end
