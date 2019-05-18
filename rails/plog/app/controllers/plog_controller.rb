class PlogController < ApplicationController
    def index
        @posts = Post.all.reverse
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
        @post= Post.find(params[:id])
    end

    def update
        pp = Post.find(params[:id])
        pp.user = params[:input1]
        pp.message = params[:input2]
        pp.save
        redirect_to :root
    end


end
