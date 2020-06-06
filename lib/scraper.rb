require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://flatironschool.com/'))

 
courses = doc.css('gridContainer-EnvccM')

courses.each do |course|
  puts course.text.strip
end