# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{integrity-script}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Dungan"]
  s.date = %q{2009-09-15}
  s.description = %q{This notifier will execute a script of your choosing, passing pass/fail as well as any extra args you choose to it. It was originally conceived to be used to talk to an Arduino board}
  s.email = %q{mpd@jesters-court.net}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "lib/integrity/notifier/config.haml",
     "lib/integrity/notifier/script.rb"
  ]
  s.homepage = %q{http://github.com/xxx/integrity-script}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Integrity notifier that runs an arbitrary script}
  s.test_files = [
    "test/integrity_script_test.rb",
     "test/test_script.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
