#!/usr/bin/env ruby
#
# Section 8.3 on page 56
# 5 points
#
# Rewrite your table of contents program on page 32. Start the program with an
# array holding all of the information for your table of contents (chapter
# names, page numbers, and so on). Then print out the information from the array
# in a beautifully formatted table of contents like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

chapter = ["Chapter 1:", "Chapter 2:", "Chapter 3:"]
content = ["Getting Started", "Numbers", "Letters"]
page = ["page  1", "page  9", "page 13"]
num = 0

puts "Table of Contents \n".center(50)
while num != 3
  puts "#{chapter[num]}  #{content[num]}".ljust(30) + "#{page[num]}".rjust(20)
  num += 1
end
