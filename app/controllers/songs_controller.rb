class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        find_instance()
    end

    def new
        @song = Song.new
    end

    def edit
        find_instance()
    end

    def create
        @song = Song.create(song_params)
        redirect_to @song
    end

    def update
        find_instance()
        @song.update(song_params)
        redirect_to @song
    end

    private

    def find_instance
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit!
    end
end
