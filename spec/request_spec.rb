require 'spec_helper'

=begin

describe 'Request' do
  module Grooveshark
    module Request
      TOKEN_TTL = 1 # override default ttl for tests
    end
  end
  
  it 'should obtain a new communication token on TTL expiration' do
    @gs = Grooveshark::Client.new
    @tokens = []
    
    3.times do |i|
      @gs.search_songs('Muse')
      @tokens << @gs.communication_token
      sleep 3
    end
    
    @tokens.uniq!
    @tokens.size.should == 3
  end
end
=end