require 'spec_helper'

describe BrowserDetector do
  it "should have the correct VERSION" do
    BrowserDetector::VERSION.should == File.read( "#{File.dirname __FILE__}/../VERSION" ).chomp
  end
end
