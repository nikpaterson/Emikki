require File.expand_path '../../server.rb', __FILE__
require 'rspec'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

describe 'Prototype App' do
  include Rack::Test::Methods
  
  def app() Sinatra::Application end
  
  it 'displays the homepage' do
    get '/'
    expect(last_response.status).to eq 200
  end

  it 'displays the company name: Emikki' do
    get '/'
    expect(last_response.body).to include "Emikki"
  end
  
  it 'displays the correct content' do 
    get '/'
    expect(last_response.body).to include "See our new Spring/Summer '18 collection"
  end
  
end