require 'spec_helper'
require 'user'
require 'user_repository'

describe UserRepository do
  before(:each) do 
    reset_users_table
    reset_peeps_table
  end

  it 'login matches the required login' do # don't worry about this until the basic tests are done
    # user = User.new
    # user.email = params[:email]
    # user.password = params[:password]

  end

  it 'checks the admin is Ed Minn' do 
    repo = UserRepository.new

    admin = repo.find(1)
    expect(admin.username).to eq "Admin"
    expect(admin.name).to eq "Ed Minn"
    expect(admin.email).to eq "EdMinn@email.com"
  end

  it 'checks for the user camybish' do 
    repo = UserRepository.new

    camy = repo.find(2)
    expect(camy.username).to eq "camybish"
    expect(camy.name).to eq "Cameron Bishop"
    expect(camy.email).to eq "camybish@piesize.co.uk"
  end
end

=begin

What are we testing 

login matches the required login

=end
