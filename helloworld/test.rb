ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
#require 'rspec'
require 'rack/test'
require_relative 'hello_world.rb'

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe "The Hello World App" do
  it "says hello" do
    get '/'
    response = 'Hello World'
    last_response.body.must_equal 'Hello World'
  end
end
