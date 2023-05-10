require 'spec_helper'
require 'user'
require 'user_repo'

describe UserRepo do
  before(:each) do 
    reset_users_table
  end

  it 'login matches the required login' do
    user = User.new
    user.email = params[:email]
    user.password = params[:password]

  end
end

=begin

What are we testing 

login matches the required login

=end
