class ArtistsController < ApplicationController
    def show
        find_instance()
    end

    def new
        @artist = Artist.new
    end

    def edit
        find_instance()
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to @artist
    end

    def update
        find_instance()
        @artist.update(artist_params)
        redirect_to @artist
    end

    private

    def find_instance
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit!
    end

    
end
