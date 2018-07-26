#!usr/bin/env ruby

require 'csv'

data_dir = 'http://openn.library.upenn.edu/Data/'

CSV.foreach 'data/bibliophilly_contents.csv', encoding: 'ISO-8859-1:UTF-8' do |row|
  next if row[0] == 'tei_url'

  path = row[2]
  base = path.split('/').pop
  puts "#{data_dir}#{path}/data/#{base}_TEI.xml"
end
