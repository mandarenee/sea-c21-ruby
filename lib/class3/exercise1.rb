# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

num = 3
bottle = 'bottles'

while num > 0
  print "#{num} #{bottle} of beer on the wall, "
  print "#{num} #{bottle} of beer!\n"
  num -= 1
  if num == 1
    bottle = 'bottle'
  elsif num == 0
    num = 'no more'
    bottle = 'bottles'
  end
  print 'Take one down, pass it around, '
  print "#{num} #{bottle} of beer on the wall!\n"
  break if num == 'no more'
end
print "#{num.capitalize} #{bottle} of beer on the wall, "
print "#{num} #{bottle} of beer!\n"
print "Go to the store and buy some more, 3 #{bottle} of beer on the wall!\n"
