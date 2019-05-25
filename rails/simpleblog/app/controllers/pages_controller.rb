class PagesController < ApplicationController
    def about
        @title = 'About Us'
        @content = "this is about pages"
    end
end
