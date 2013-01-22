$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec'
require 'rack/test'
require 'loveos/test_service'

require 'loveos-sinatra_base/spec_support'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

def app
  LoveOS::TestService::Service
end
