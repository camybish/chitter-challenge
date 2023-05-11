require "rack/test"
require_relative '../../app'
require 'pg'
require 'peep_repository'
require 'user_repository'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }



  before(:each) do 
    reset_peeps_table
    reset_users_table
  end

  context 'GET /' do 
    xit 'should display the first peep to the feed' do 
      response = get('/')

      expect(response.status).to eq 200
      expect(response.body).to include("Jar Jar")
    end

    it 'should include a link to post a peep' do 
        
    end

    it 'should include a login' do 

    end

  end


end