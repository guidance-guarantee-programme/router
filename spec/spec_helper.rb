ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  rack_app = File.read(File.join(File.dirname(__FILE__), '..', 'config.ru'))
  rack_app.sub!(/^run.*$/, '')
  eval(rack_app)
end
