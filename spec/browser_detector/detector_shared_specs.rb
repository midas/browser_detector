shared_examples_for "any browser detection" do
  it "should agree that the browser name is '#{vars[:browser_name]}'" do
    detector.browser_name.should == vars[:browser_name]
  end

  it "should agree that the browser version is '#{vars[:browser_version]}'" do
     detector.browser_version.should == vars[:browser_version]
  end

  it "should agree that the browser major version is '#{vars[:browser_version_major]}'" do
     detector.browser_version_major.should == vars[:browser_version_major]
  end

  it "should agree that the browser minor version is '#{vars[:browser_version_minor]}'" do
     detector.browser_version_minor.should == vars[:browser_version_minor]
  end

  it "should agree that the browser build version is '#{vars[:browser_version_build]}'" do
     detector.browser_version_build.should == vars[:browser_version_build]
  end

  it "should agree that the browser revision version is '#{vars[:browser_version_revision]}'" do
     detector.browser_version_revision.should == vars[:browser_version_revision]
  end

  it "should have a browser id of '#{vars[:browser_id]}'" do
     detector.browser_id.should == vars[:browser_id]
  end

  it "should have a browser full name of '#{vars[:browser_full_name]}'" do
     detector.browser_full_name.should == vars[:browser_full_name]
  end

  it "should #{vars[:can_use_png] ? '' : 'not '}be able to use a png" do
    detector.can_use_png?.should == vars[:can_use_png]
  end

  it "should agree that the browser is '#{vars[:browser_name]}" do
    detector.browser_is?( :name => vars[:browser_name] ).should be_true
  end

  it "should agree that the browser is :version => '#{vars[:browser_version]}'" do
    detector.browser_is?( :version => vars[:browser_version] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}' and :version => '#{vars[:browser_version]}'" do
    detector.browser_is?( :name => vars[:browser_name],
                           :version => vars[:browser_version] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}'.to_sym and :version => '#{vars[:browser_version]}'" do
    detector.browser_is?( :name => vars[:browser_name].to_sym,
                           :version => vars[:browser_version] ).should be_true
  end

  it "should agree that the browser is :major_version => '#{vars[:browser_version_major]}'" do
     detector.browser_is?( :major_version => vars[:browser_version_major] ).should be_true
  end

  it "should agree that the browser is :minor_version => '#{vars[:browser_version_minor]}'" do
     detector.browser_is?( :minor_version => vars[:browser_version_minor] ).should be_true
  end

  it "should agree that the browser is :build_version => '#{vars[:browser_version_build]}'" do
     detector.browser_is?( :build_version => vars[:browser_version_build] ).should be_true
  end

  it "should agree that the browser is :revision_version => '#{vars[:browser_version_revision]}'" do
     detector.browser_is?( :revision_version => vars[:browser_version_revision] ).should be_true
  end

  it "should agree that the browser is :major_version => '#{vars[:browser_version_major]}', :minor_version => '#{vars[:browser_version_minor]}'" do
     detector.browser_is?( :major_version => vars[:browser_version_major],
                            :minor_version => vars[:browser_version_minor] ).should be_true
  end

  it "should agree that the browser is :major_version => '#{vars[:browser_version_major]}', :minor_version => '#{vars[:browser_version_minor]}', :build_version => '#{vars[:browser_version_build]}'" do
     detector.browser_is?( :major_version => vars[:browser_version_major],
                            :minor_version => vars[:browser_version_minor],
                            :build_version => vars[:browser_version_build] ).should be_true
  end

  it "should agree that the browser is :major_version => '#{vars[:browser_version_major]}', :minor_version => '#{vars[:browser_version_minor]}', :build_version => '#{vars[:browser_version_build]}', :revision_version => '#{vars[:browser_version_revision]}'" do
     detector.browser_is?( :major_version => vars[:browser_version_major],
                            :minor_version => vars[:browser_version_minor],
                            :build_version => vars[:browser_version_build],
                            :revision_version => vars[:browser_version_revision] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :major_version => '#{vars[:browser_version_major]}'" do
     detector.browser_is?( :name => vars[:browser_name],
                            :major_version => vars[:browser_version_major] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :minor_version => '#{vars[:browser_version_minor]}'" do
     detector.browser_is?( :name => vars[:browser_name],
                            :minor_version => vars[:browser_version_minor] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :build_version => '#{vars[:browser_version_build]}'" do
     detector.browser_is?( :name => vars[:browser_name],
                            :build_version => vars[:browser_version_build] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :revision_version => '#{vars[:browser_version_revision]}'" do
     detector.browser_is?( :name => vars[:browser_name],
                            :revision_version => vars[:browser_version_revision] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :major_version => '#{vars[:browser_version_major]}'.to_i" do
     detector.browser_is?( :name => vars[:browser_name],
                            :major_version => vars[:browser_version_major].to_i ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :minor_version => '#{vars[:browser_version_minor]}'.to_i" do
     detector.browser_is?( :name => vars[:browser_name],
                            :minor_version => vars[:browser_version_minor].to_i ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :build_version => '#{vars[:browser_version_build]}'.to_i" do
     detector.browser_is?( :name => vars[:browser_name],
                            :build_version => vars[:browser_version_build].to_i ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :revision_version => '#{vars[:browser_version_revision]}'.to_i" do
     detector.browser_is?( :name => vars[:browser_name],
                            :revision_version => vars[:browser_version_revision].to_i ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :major_version => '#{vars[:browser_version_major]}', :minor_version => '#{vars[:browser_version_minor]}'" do
     detector.browser_is?( :name => vars[:browser_name],
                            :major_version => vars[:browser_version_major],
                            :minor_version => vars[:browser_version_minor] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :major_version => '#{vars[:browser_version_major]}', :minor_version => '#{vars[:browser_version_minor]}', :build_version => '#{vars[:browser_version_build]}'" do
     detector.browser_is?( :name => vars[:browser_name],
                            :major_version => vars[:browser_version_major],
                            :minor_version => vars[:browser_version_minor],
                            :build_version => vars[:browser_version_build] ).should be_true
  end

  it "should agree that the browser is :name => '#{vars[:browser_name]}', :major_version => '#{vars[:browser_version_major]}', :minor_version => '#{vars[:browser_version_minor]}', :build_version => '#{vars[:browser_version_build]}', :revision_version => '#{vars[:browser_version_revision]}'" do
     detector.browser_is?( :name => vars[:browser_name],
                            :major_version => vars[:browser_version_major],
                            :minor_version => vars[:browser_version_minor],
                            :build_version => vars[:browser_version_build],
                            :revision_version => vars[:browser_version_revision]).should be_true
  end

  it "should agree that it is #{vars[:is_webkit] ? '' : 'not '}a webkit browser" do
    detector.webkit?.should == vars[:is_webkit]
  end

  it "should agree that it is #{vars[:is_iphone] ? '' : 'not '}the iphone" do
    detector.iphone?.should == vars[:is_iphone]
  end
end