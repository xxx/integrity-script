#!/usr/bin/env ruby

@arg = ARGV.first
@extra = ARGV.last

File.open(File.join(File.dirname(__FILE__), 'shumway.txt'), 'w') do |f|
  f.write(@arg + "\n")
  f.write(@extra + "\n")
end

exit 69
