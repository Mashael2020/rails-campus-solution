class AuthorsController < ApplicationController

    def index
        @authors = Author.all
    end

    def show
        @author = Author.find(params[:id])
    end

    def new 
        @author = Author.new
    end

    def create
        @author = Author.create(author_params)
        redirect_to author_path(@author)
    end

    def destroy
        @author = Author.find(params[:id])
        @author.destroy 
        redirect_to authors_path
    end

    def author_params
        params.require(:author).permit(:first_name, :last_name, :location)
    end
end