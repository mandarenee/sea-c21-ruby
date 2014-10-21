#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that displays the following table of 90's Hip-Hop hits:
#
#   $ ruby exercise2.rb
#   Can I Kick It?      A Tribe Called Quest      1991
#   Rump Shaker         Wreckx-n-Effect           1992
#   Check Yo Self       Ice Cube                  1993
#   Regulate            Warren G & Nate Dogg      1994
#   I Got 5 On It       Luniz                     1995
#   Ready Or Not        The Fugees                1996
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

n = 0
a =
  ['Can I Kick It?', 'Rump Shaker', 'Check Yo Self', 'Regulate',
   'I Got 5 On It', 'Ready Or Not']
b =
  ['A Tribe Called Quest', 'Wreckx-n-Effect', 'Ice Cube',
   'Warren G & Nate Dogg', 'Luniz', 'The Fugees']
c = [1991, 1992, 1993, 1994, 1995, 1996]

until n == 6
  puts "#{a[n]}".ljust(20) + "#{b[n]}".ljust(26) + "#{c[n]}".to_s.rjust(4)
  n += 1
end

# TIP #1: Hold all of the information -- song, artist, and year -- in an array.
#
# TIP #2: Use the `string.ljust` method from class 2 exercise 7.
#
# TIP #3: The width of each line is 50 characters.
