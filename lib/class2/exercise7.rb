# 5 points
#
# Write a program that displays the following table of contents:
#
#   $ ruby exercise7.rb
#                   Table of Contents
#   Chapter 1:  Getting Started                page  1
#   Chapter 2:  Numbers                        page  9
#   Chapter 3:  Letters                        page 13
#
# Tip #1: The width of each line is 50 characters.
#
# Tip #2: You'll need the following methods:
#
#   string.center(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` centered.
#
#     'bird'.center(10)  #=> '   bird   '
#
#   string.ljust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` left justified.
#
#     'bird'.ljust(10)  #=> 'bird      '
#
#   string.rjust(Integer)  #=> String
#
#     Returns a new String of length Integer with `string` right justified.
#
#     'bird'.rjust(10)  #=> '      bird'

line_width = 50
puts 'Table of Contents'.center(line_width)
puts 'Chapter 1:  Getting Started'.ljust(43) + 'page'.ljust(5) + '1'.rjust(2)
puts 'Chapter 2:  Numbers'.ljust(43) + 'page'.ljust(5) + '9'.rjust(2)
puts 'Chapter 3:  Letters'.ljust(43) + 'page'.ljust(5) + '13'.rjust(2)
