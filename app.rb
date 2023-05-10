# file: app.rb
require 'sinatra'
require "sinatra/reloader"
require_relative 'lib/database_connection'

DatabaseConnection.connect

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  def reset_web_table
    seed_sql = File.read('chitter_table.sql')
    connection = PG.connect
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_web_table
  end

  get '/comingsoon' do
    return "<h1>Coming soon: CHITTER, it's shitter than twitter</h1>"
  end 
end
