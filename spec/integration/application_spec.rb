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

  context 'GET /' do 
    it 'should display the first peep to the feed' do 
      response = get('/')

      expect(response.status).to eq 200
      expect(response.body).to include("Jar Jar")
    end

    it 'should include a link to post a peep' do 

    end

    it 'should show the username number as a part of the peep' do
      response = get('/')

      expect(response.status).to eq 200
      expect(response.body).to include("@Admin: <br> I am a big fan of Jar Jar Binks")
    end
  end

  context 'GET /login' do 
    it 'should include a login' do 
        response = get('/login')

        expect(response.status).to eq 200
        expect(response.body).to include('<input type="text" name="username"><br>')
        expect(response.body).to include('<input type="text" name="password"><br>')
    end
  end
  context 'POST /login' do 
    it 'should return the login and password provided' do 
        response = post('/login', username: 'Admin', password: 'password123')

        expected_response = 'USERNAME Admin PASSWORD password123'
        expect(response.status).to eq 200
        expect(response.body).to include(expected_response)
    end
  end
end