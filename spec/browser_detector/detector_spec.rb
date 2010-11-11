require 'spec_helper'
require File.join( File.dirname(__FILE__), 'detector_shared_specs' )

describe BrowserDetector::Detector do
  before :each do
    @klass = BrowserDetector::Detector
  end

  def self.user_agents
    {
      :ie55 => 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.1)',
      :ie60 => 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)',
      :ie70 => 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)',
      :ie80 => 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)',
      :firefox2 => 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en-US; rv:1.8.1.17) Gecko/20080829 Firefox/2.0.0.17',
      :firefox3 => 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.0.11) Gecko/2009060214 Firefox/3.0.11',
      :firefox35 => 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3',
      :firefox35win => 'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)',
      :opera10 => 'Opera/9.80 (Macintosh; Intel Mac OS X; U; en) Presto/2.2.15 Version/10.00',
      :safari403 => 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.8 Safari/532.2',
      :iphone3 => 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_1 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7C144 Safari/528.16',
      :iphone2 => 'Mozilla/5.0 (iPhone; U; CPU like Mac OS X; en) AppleWebKit/420+ (KHTML, like Gecko) Version/3.0 Mobile/1A535b Safari/419.3',
      :chrome3 => 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.0 (KHTML, like Gecko) Chrome/3.0.195.27 Safari/532.0',
      :chrome4 => 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.8 Safari/532.2'
    }
  end

  def user_agents
    self.class.user_agents
  end

  it "should know the correct known browser ids" do
    @klass.all_browsers.sort.should == %w(chrome firefox ie55 ie60 ie70 ie80 konqueror netscape opera safari).sort
  end

  it "should know the correct known mobile browser ids" do
    @klass.all_mobile_browsers.sort.should == %w(ie_ce4).sort
  end

  context "when given a nil user agent" do
    before :each do
      @detector = @klass.new( nil )
      @detector.ua.should be_nil
    end

    it "should agree that the browser name is 'unknown'" do
      @detector.browser_name.should == 'unknown'
    end
  end

  context "when given Firefox 2.0 user agent" do
    before :each do
      @detector = @klass.new( self.user_agents[:firefox2] )
      @detector.ua.should_not be_nil
      @browser_name = 'firefox'
      @browser_version = '2.0.0.17'
      @browser_version_major = '2'
      @browser_version_minor = '0'
      @browser_version_build = '0'
      @browser_version_revision = '17'
      @browser_id = 'firefox20017'
      @browser_full_name = 'Firefox 2.0.0.17'
      @can_use_png = true
    end

    it_should_behave_like "any browser detection"
  end

  context "when given Firefox 3.0 user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:firefox3] )
      @detector.ua.should_not be_nil
      @browser_name = 'firefox'
      @browser_version = '3.0.11'
      @browser_version_major = '3'
      @browser_version_minor = '0'
      @browser_version_build = '11'
      @browser_version_revision = '0'
      @browser_id = 'firefox3011'
      @browser_full_name = 'Firefox 3.0.11'
      @can_use_png = true
    end

    it_should_behave_like "any browser detection"
  end

  context "when given Firefox 3.5 user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:firefox35] )
      @detector.ua.should_not be_nil
      @browser_name = 'firefox'
      @browser_version = '3.5.3'
      @browser_version_major = '3'
      @browser_version_minor = '5'
      @browser_version_build = '3'
      @browser_version_revision = '0'
      @browser_id = 'firefox353'
      @browser_full_name = 'Firefox 3.5.3'
      @can_use_png = true
    end

    it_should_behave_like "any browser detection"
  end

  context "when given Firefox 3.5 Windows user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:firefox35win] )
      @detector.ua.should_not be_nil
      @browser_name = 'firefox'
      @browser_version = '3.5.3'
      @browser_version_major = '3'
      @browser_version_minor = '5'
      @browser_version_build = '3'
      @browser_version_revision = '0'
      @browser_id = 'firefox353'
      @browser_full_name = 'Firefox 3.5.3'
      @can_use_png = true
    end

    it_should_behave_like "any browser detection"
  end

  context "when given Opera 10.0 user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:opera10] )
      @detector.ua.should_not be_nil
      @browser_name = 'opera'
      @browser_version = '10.00'
      @browser_version_major = '10'
      @browser_version_minor = '0'
      @browser_version_build = '0'
      @browser_version_revision = '0'
      @browser_id = 'opera1000'
      @browser_full_name = 'Opera 10.00'
      @can_use_png = true
    end

    it_should_behave_like "any browser detection"
  end

  context "when given IE 5.5 user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:ie55] )
      @detector.ua.should_not be_nil
      @browser_name = 'ie'
      @browser_version = '5.5'
      @browser_version_major = '5'
      @browser_version_minor = '5'
      @browser_version_build = '0'
      @browser_version_revision = '0'
      @browser_id = 'ie55'
      @browser_full_name = 'Internet Explorer 5.5'
      @can_use_png = false
    end

    it_should_behave_like "any browser detection"
  end

  context "when given IE 6.0 user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:ie60] )
      @detector.ua.should_not be_nil
      @browser_name = 'ie'
      @browser_version = '6.0'
      @browser_version_major = '6'
      @browser_version_minor = '0'
      @browser_version_build = '0'
      @browser_version_revision = '0'
      @browser_id = 'ie60'
      @browser_full_name = 'Internet Explorer 6.0'
      @can_use_png = false
    end

    it_should_behave_like "any browser detection"
  end

  context "when given IE 7.0 user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:ie70] )
      @detector.ua.should_not be_nil
      @browser_name = 'ie'
      @browser_version = '7.0'
      @browser_version_major = '7'
      @browser_version_minor = '0'
      @browser_version_build = '0'
      @browser_version_revision = '0'
      @browser_id = 'ie70'
      @browser_full_name = 'Internet Explorer 7.0'
      @can_use_png = true
    end

    it_should_behave_like "any browser detection"
  end

  context "when given IE 8.0 user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:ie80] )
      @detector.ua.should_not be_nil
      @browser_name = 'ie'
      @browser_version = '8.0'
      @browser_version_major = '8'
      @browser_version_minor = '0'
      @browser_version_build = '0'
      @browser_version_revision = '0'
      @browser_id = 'ie80'
      @browser_full_name = 'Internet Explorer 8.0'
      @can_use_png = true
    end

    it_should_behave_like "any browser detection"
  end

  context "when given Safari 4.0.3 user agent" do
    before :each do
      @detector = BrowserDetector::Detector.new( self.user_agents[:safari403] )
      @detector.ua.should_not be_nil
      @browser_name = 'safari'
      @browser_version = '4.0.3'
      @browser_version_major = '4'
      @browser_version_minor = '0'
      @browser_version_build = '3'
      @browser_version_revision = '0'
      @browser_id = 'safari403'
      @browser_full_name = 'Safari 4.0.3'
      @can_use_png = true
    end

    it_should_behave_like "any browser detection"
  end

  context "when given a bad Safari 4.0.3 user agent where version cannot be determined" do
    before :each do
      @detector = BrowserDetector::Detector.new( 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_1; en-US) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/4.0.221.8 Safari/999.2' )
      @detector.ua.should_not be_nil
      @browser_name = 'safari'
      @browser_version = '4.0.3'
      @browser_version_major = '4'
      @browser_version_minor = '0'
      @browser_version_build = '3'
      @browser_version_revision = '0'
      @browser_id = 'safari403'
      @browser_full_name = 'Safari 4.0.3'
      @can_use_png = true
    end

    it "should agree that the browser verison is 0.0.0.0" do
      @detector.browser_version.should == '0.0.0.0'
    end

    it "should agree that the browser verison major is 0" do
      @detector.browser_version_major.should == '0'
    end

    it "should agree that the browser verison minor is 0" do
      @detector.browser_version_minor.should == '0'
    end

    it "should agree that the browser verison build is 0" do
      @detector.browser_version_build.should == '0'
    end

    it "should agree that the browser verison revision is 0" do
      @detector.browser_version_revision.should == '0'
    end
  end

  context "having sample user agents" do
    user_agents.each do |key, value|
      it "should have the correct sample user agent for the '#{key}' browser" do
        @klass.user_agents[key].should == value
      end
    end
  end
end
