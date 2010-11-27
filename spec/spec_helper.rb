begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  gem 'rspec'
  require 'rspec'
end

$:.unshift(File.dirname(__FILE__) + '/../lib')
$:.unshift(File.dirname(__FILE__) + '/../trinidad-libs')
$:.unshift(File.dirname(__FILE__) + '/fixtures')

require 'java'
require 'trinidad'
require 'mocha'

Spec::Runner.configure do |config|
  config.mock_with :mocha
end

MOCK_WEB_APP_DIR = File.join(File.dirname(__FILE__), 'web_app_mock')
