#!/usr/bin/env ruby

require 'fileutils'
here = File.dirname(__FILE__)
puts File.expand_path(here)

puts Dir.entries(here)
FileUtils.mkdir_p(here + '/stuff')
puts Dir.entries(here)

puts FileUtils.cmp(here + '/fileutils_one.rb', here + '/bank_accounts_erb.rb')
puts FileUtils.touch 'file1.empty'
puts FileUtils.cp 'fileutils.rb', 'fileutils_cp.rb'
