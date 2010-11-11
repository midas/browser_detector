$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'browser_detector/detector'
require 'browser_detector/rails/view_helpers'

module BrowserDetector
  VERSION = File.read( "#{File.dirname __FILE__}/../VERSION" ).chomp
end

ActionView::Base.send( :include, BrowserDetector::Rails::ViewHelpers ) if defined?( ActionView )