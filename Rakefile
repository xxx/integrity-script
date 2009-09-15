task :default => :test

task :test do
  ruby "test/integrity_script_test.rb"
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "integrity-script"
    gemspec.summary = "Integrity notifier that runs an arbitrary script"
    gemspec.description = "This notifier will execute a script of your choosing, passing pass/fail as well as any extra args you choose to it. It was originally conceived to be used to talk to an Arduino board"
    gemspec.email = "mpd@jesters-court.net"
    gemspec.homepage = "http://github.com/xxx/integrity-script"
    gemspec.authors = ["Michael Dungan"]
    gemspec.files = FileList['lib/**/*.rb']
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end


#begin
#  require "mg"
#  MG.new("integrity-script.gemspec")
#rescue LoadError
#end
