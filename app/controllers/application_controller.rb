# require 'rack-flash'

class ApplicationController < Sinatra::Base
  # use Rack::Flash
  
  register Sinatra::ActiveRecordExtension

  enable :sessions
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  # get '/songs' do 
  #   @songs = Song.all
  #   erb :'/songs/index'
  # end

  # get '/songs/new' do 
  #   erb :'/songs/new'
  # end

  # get '/songs/:slug' do
  #   @song = Song.find_by_slug(params[:slug])
  #   erb :'/songs/show'
  # end

  # post '/songs' do
  #   @song = Song.create(params[:song])
  #   @song.artist = Artist.find_or_create_by(params[:artist])
  #   @song.genre_ids = params[:genre]
  #   @song.save
  #   flash[:message] = "Successfully created song."
  #   redirect to("/songs/#{@song.slug}")
  # end

  # get '/artists' do
  #   @artists = Artist.all
  #   erb :'/artists/index'
  # end

  # get '/artists/:slug' do 
  #   @artist = Artist.find_by_slug(params[:slug])
  #   erb :'/artists/show'
  # end

  # get '/genres' do
  #   @genres = Genre.all
  #   erb :'/genres/index'
  # end

  # get '/genres/:slug' do 
  #   @genre = Genre.find_by_slug(params[:slug])
  #   erb :'/genres/show'
  # end
end