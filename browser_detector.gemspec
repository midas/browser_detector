# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{browser_detector}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["C. Jason Harrelson (midas)"]
  s.date = %q{2010-11-11}
  s.description = %q{Determines the name and version of the browser currently making a request.}
  s.email = %q{jason@lookforwardenterprises.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "History.txt",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "browser_detector.gemspec",
     "lib/browser_detector.rb",
     "lib/browser_detector/detector.rb",
     "lib/browser_detector/rails.rb",
     "lib/browser_detector/rails/view_helpers.rb",
     "spec/browser_detector/detector_shared_specs.rb",
     "spec/browser_detector/detector_spec.rb",
     "spec/browser_detector_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/midas/browser_detector}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Determines the name and version of the browser currently making a request.}
  s.test_files = [
    "spec/browser_detector/detector_shared_specs.rb",
     "spec/browser_detector/detector_spec.rb",
     "spec/browser_detector_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end

