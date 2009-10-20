require 'rubygems'
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'browser_detector'

class Test::Unit::TestCase
end

class View
  attr_accessor :request
  
  def initialize
    @request = Request.new
  end
end
View.send( :include, BrowserDetector::Rails::ViewHelpers )

class Request
  attr_accessor :env
  
  def initialize
    @env = { 'HTTP_USER_AGENT' => BrowserDetector::Detector.user_agents[:firefox35] }
  end
end
