# file: app.rb
require 'sinatra'
require "sinatra/reloader"
require_relative 'lib/database_connection'
require_relative 'lib/user_repository'
require_relative 'lib/peep_repository'

DatabaseConnection.connect

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # def reset_web_table
  #   seed_sql = File.read('chitter_table.sql')
  #   connection = PG.connect
  #   connection.exec(seed_sql)
  # end

  # before(:each) do 
  #   reset_web_table
  # end

  get '/' do 
    peep = PeepRepository.new
    user = UserRepository.new
    @peeps = peep.all
    # @user_id = @peeps.each { |ids| ids.user_id }
    @arr = peep.each { |id| id.id }
    p @arr
    @peep_handle = user.find(@arr)
    return erb(:homepage)
  end

  get '/peep' do 
    return "<p> Feature coming soon! </p>"
  end

  get '/login' do 
    return erb(:login)
  end

  post '/login' do 
    user = UserRepository.new
    @username = params[:username]
    @password = params[:password]
    return erb(:login_sucess)
  end

  get '/comingsoon' do
    return "<h1>Coming soon: CHITTER, it's shitter than twitter</h1>"
  end 
end
