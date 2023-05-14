require 'spec_helper'
require 'peep'
require 'peep_repository'

describe PeepRepository do
  before(:each) do 
    reset_both_tables
  end

  it 'shows the first peep' do
    peep_repo = PeepRepository.new

    peep_feed = peep_repo.all
    
    expect(peep_feed.first.time).to eq "20030510 10:34:09 AM"
    expect(peep_feed.first.content).to eq "I am a big fan of Jar Jar Binks"
  end

  it 'shows the March 10th peep' do
    pepo_repo = PeepRepository.new
    mar10 = pepo_repo.find(2)

    expect(mar10.time).to eq "20220310 05:21:52 AM"
    expect(mar10.content).to eq "It is a great day today"
  end

end
