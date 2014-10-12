# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
count = 1
while count <= 3
  input = gets.chomp
  if input == 'BYE'
    # break if count == 3
    count += 1
    puts 'Nana: HOW\'S SCHOOL GOING?'
  elsif input == input.upcase
    count = 1
    num = rand(1930..1950)
    puts "Nana: NOT SINCE #{num}!"
  else
    count = 1
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
  end
end
puts 'Nana: BYE SWEETIE!'
