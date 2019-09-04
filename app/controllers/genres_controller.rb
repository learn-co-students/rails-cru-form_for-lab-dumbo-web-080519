class GenresController < ApplicationController
    def show
        find_instance()
    end

    def new
        @genre = Genre.new
    end

    def edit
        find_instance()
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to @genre
    end

    def update
        find_instance()
        @genre.update(genre_params)
        redirect_to @genre
    end

    private

    def find_instance
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit!
    end
end
