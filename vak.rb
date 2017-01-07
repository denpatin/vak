# encoding: utf-8

require 'pdf-reader'

reader = PDF::Reader.new 'vak.pdf'
page = reader.pages.first.text
page.gsub!(/.*(?=1. )/m, '')
arr = page.split(/(?:\\n)*\s*\d+\.\s+/)
arr.shift

puts arr.first
