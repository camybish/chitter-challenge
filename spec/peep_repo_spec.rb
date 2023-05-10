require 'spec_helper'
require 'peep'
require 'peep_repo'

describe PeepRepo do
  before(:each) do 
    reset_peeps_table
  end

  it 'shows the first peep' do
    peep_repo = PeepRepo.new

    peep_feed = peep_repo.all
    
    expect(peep_feed.first.time).to eq "20030510 10:34:09 AM"
    expect(peep_feed.first.content).to eq "I am a big fan of Jar Jar Binks"
  end
end
