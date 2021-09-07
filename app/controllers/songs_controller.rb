require 'rack-flash'

class SongsController < ApplicationController
    use Rack::Flash

    get '/songs' do 
        @songs = Song.all
        erb :'/songs/index'
    end

    get '/songs/new' do 
        erb :'/songs/new'
    end

    get '/songs/:slug' do
        @song = Song.find(params[:id])
        erb :'/songs/show'
    end

    post '/songs' do
        @song = Song.find_or_create_by(params[:song])
        @song.artist = Artist.find_or_create_by(params[:artist])
        @song.genres << Genre.find_or_create_by(params[:genre])
        @song.save
        flash[:message] = "Successfully created song."
        redirect to("/songs/#{@song.slug}")
    end

    get '/songs/:slug/edit' do

    end

    patch '/songs/:slug' do

    end
end