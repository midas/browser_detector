shared_examples_for "any browser detection" do
  it "should agree that the browser name is '#{@browser_name}'" do
    @detector.browser_name.should == @browser_name
  end

  it "should agree that the browser version is '#{@browser_version}'" do
     @detector.browser_version.should == @browser_version
  end

  it "should agree that the browser major version is '#{@browser_version_major}'" do
     @detector.browser_version_major.should == @browser_version_major
  end

  it "should agree that the browser minor version is '#{@browser_version_minor}'" do
     @detector.browser_version_minor.should == @browser_version_minor
  end

  it "should agree that the browser build version is '#{@browser_version_build}'" do
     @detector.browser_version_build.should == @browser_version_build
  end

  it "should agree that the browser revision version is '#{@browser_version_revision}'" do
     @detector.browser_version_revision.should == @browser_version_revision
  end

  it "should have a browser id of '#{@browser_id}'" do
     @detector.browser_id.should == @browser_id
  end

  it "should have a browser full name of '#{@browser_full_name}'" do
     @detector.browser_full_name.should == @browser_full_name
  end

  it "should #{@can_use_png ? '' : 'not '}be able to use a png" do
    @detector.can_use_png?.should == @can_use_png
  end

  it "should agree that the browser is '#{@browser_name}" do
    @detector.browser_is?( :name => @browser_name ).should be_true
  end

  it "should agree that the browser is :version => '#{@browser_version}'" do
    @detector.browser_is?( :version => @browser_version ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}' and :version => '#{@browser_version}'" do
    @detector.browser_is?( :name => @browser_name,
                           :version => @browser_version ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}'.to_sym and :version => '#{@browser_version}'" do
    @detector.browser_is?( :name => @browser_name.to_sym,
                           :version => @browser_version ).should be_true
  end

  it "should agree that the browser is :major_version => '#{@browser_version_major}'" do
     @detector.browser_is?( :major_version => @browser_version_major ).should be_true
  end

  it "should agree that the browser is :minor_version => '#{@browser_version_minor}'" do
     @detector.browser_is?( :minor_version => @browser_version_minor ).should be_true
  end

  it "should agree that the browser is :build_version => '#{@browser_version_build}'" do
     @detector.browser_is?( :build_version => @browser_version_build ).should be_true
  end

  it "should agree that the browser is :revision_version => '#{@browser_version_revision}'" do
     @detector.browser_is?( :revision_version => @browser_version_revision ).should be_true
  end

  it "should agree that the browser is :major_version => '#{@browser_version_major}', :minor_version => '#{@browser_version_minor}'" do
     @detector.browser_is?( :major_version => @browser_version_major,
                            :minor_version => @browser_version_minor ).should be_true
  end

  it "should agree that the browser is :major_version => '#{@browser_version_major}', :minor_version => '#{@browser_version_minor}', :build_version => '#{@browser_version_build}'" do
     @detector.browser_is?( :major_version => @browser_version_major,
                            :minor_version => @browser_version_minor,
                            :build_version => @browser_version_build ).should be_true
  end

  it "should agree that the browser is :major_version => '#{@browser_version_major}', :minor_version => '#{@browser_version_minor}', :build_version => '#{@browser_version_build}', :revision_version => '#{@browser_version_revision}'" do
     @detector.browser_is?( :major_version => @browser_version_major,
                            :minor_version => @browser_version_minor,
                            :build_version => @browser_version_build,
                            :revision_version => @browser_version_revision ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :major_version => '#{@browser_version_major}'" do
     @detector.browser_is?( :name => @browser_name,
                            :major_version => @browser_version_major ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :minor_version => '#{@browser_version_minor}'" do
     @detector.browser_is?( :name => @browser_name,
                            :minor_version => @browser_version_minor ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :build_version => '#{@browser_version_build}'" do
     @detector.browser_is?( :name => @browser_name,
                            :build_version => @browser_version_build ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :revision_version => '#{@browser_version_revision}'" do
     @detector.browser_is?( :name => @browser_name,
                            :revision_version => @browser_version_revision ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :major_version => '#{@browser_version_major}'.to_i" do
     @detector.browser_is?( :name => @browser_name,
                            :major_version => @browser_version_major.to_i ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :minor_version => '#{@browser_version_minor}'.to_i" do
     @detector.browser_is?( :name => @browser_name,
                            :minor_version => @browser_version_minor.to_i ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :build_version => '#{@browser_version_build}'.to_i" do
     @detector.browser_is?( :name => @browser_name,
                            :build_version => @browser_version_build.to_i ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :revision_version => '#{@browser_version_revision}'.to_i" do
     @detector.browser_is?( :name => @browser_name,
                            :revision_version => @browser_version_revision.to_i ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :major_version => '#{@browser_version_major}', :minor_version => '#{@browser_version_minor}'" do
     @detector.browser_is?( :name => @browser_name,
                            :major_version => @browser_version_major,
                            :minor_version => @browser_version_minor ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :major_version => '#{@browser_version_major}', :minor_version => '#{@browser_version_minor}', :build_version => '#{@browser_version_build}'" do
     @detector.browser_is?( :name => @browser_name,
                            :major_version => @browser_version_major,
                            :minor_version => @browser_version_minor,
                            :build_version => @browser_version_build ).should be_true
  end

  it "should agree that the browser is :name => '#{@browser_name}', :major_version => '#{@browser_version_major}', :minor_version => '#{@browser_version_minor}', :build_version => '#{@browser_version_build}', :revision_version => '#{@browser_version_revision}'" do
     @detector.browser_is?( :name => @browser_name,
                            :major_version => @browser_version_major,
                            :minor_version => @browser_version_minor,
                            :build_version => @browser_version_build,
                            :revision_version => @browser_version_revision ).should be_true
  end
end