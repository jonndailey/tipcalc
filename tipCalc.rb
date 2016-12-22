print 'How much is your bill?'

bill = gets.to_f

print 'What percentage would you like to give?'

percentage = gets.to_i

percentage_float = percentage.to_f / 100

final_tip_f = (bill * percentage_float).round(2)

print "Would you like to split the bill? (Press Enter if you are not splitting the tip)"

answer = gets.chomp

final_bill = final_tip_f + bill

if answer != ""
    print "With how many people?"
    people = gets.to_i
    final_output = (final_bill / people).round(2)
    print "Your total bill is $#{bill} with a tip of #{final_tip_f}. Splitting between #{people} people, you each owe a total of #{final_output}"
    exit
  else
    final_output = (final_bill).round(2)
    print "Your bill is $#{bill} and your tip is $#{final_tip_f} based on the #{percentage}% you've given you owe a total of $#{final_output}"
end
