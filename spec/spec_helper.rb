$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
Dir[File.dirname(__FILE__) + "/helpers/*"].each { |f| require(f) }
require 'google_url_shortener'
require 'fakeweb'
require 'spec'
include FakewebHelper

Spec::Runner.configure do |config|
  
  config.before(:all) do
    Google::UrlShortener::Base.api_key = "TESTKEY"
    @key       = Google::UrlShortener::Base.api_key
    @short_url = "http://goo.gl/r5akx"
    @long_url  = "http://blog.josh-nesbitt.net/"
  end
  
end
