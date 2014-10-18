#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength
def modern_roman_numeral(num)
  roman = ''
  n = num

  # ONE THOUSAND
  return roman = 'M' if n == 1000

  # HUNDREDS
  if n.between?(900, 999)
    roman += 'CM'
  elsif n.between?(500, 899)
    roman += 'D'
    roman += 'C' * ((n / 100) % 5)
  elsif n.between?(400, 499)
    roman += 'CD'
  else
    roman += 'C' * ((n / 100) % 10)
  end

  # TENS
  if ((n / 10) % 10) == 9
    roman += 'XC'
  elsif ((n / 10) % 10).between?(5, 8)
    roman += 'L'
    roman += 'X' * ((n / 10) % 5)
  elsif ((n / 10) % 10) == 4
    roman += 'XL'
  else
    roman += 'X' * ((n / 10) % 10)
  end

  # ONES
  if (n % 10) == 9
    roman + 'IX'
  elsif (n % 10).between?(5, 8)
    roman += 'V'
    roman + 'I' * (n % 5)
  elsif (n % 10) == 4
    roman + 'IV'
  else
    roman + 'I' * (n % 5)
  end
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
