class TimelineController < ApplicationController
    def index
        @blogs = Blog.all.reverse
    end

    def write
        Blog.create(content: params[:naeyong])
        redirect_to :root
    end

    def comment
        Comment.create(blog_id: params[:blog_id], msg: params[:comment])
        redirect_to :root
    end
end
