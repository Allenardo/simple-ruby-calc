def print_header
puts "\e[H\e[2J"
print <<header
|--------------------------------------------------------------|
|--- Simple calculator on ruby                              ---|
|--- By: Devan Allen and Juan Lizarazo                      ---|
|--------------------------------------------------------------|
|  Welcome to our basic Calculator                             |
header
end

def print_choices 
print <<options
|--------------------------------------------------------------|
|   \t1: Add to our total                                    |
|   \t2: Subtract from our total                             |
|   \t3: Multiply our total by a number                      |
|   \t4: Divide our total by a number                        |
|   \t5: Clear total                                         |
|   \t6: Exit                                                |
|--------------------------------------------------------------|
      Your current total is: #{$total}
|--------------------------------------------------------------|
options

  print "Enter option: "
  choice = gets.chomp.to_i
  run_calculator(choice)

end

def run_calculator(choice)

  case choice
    
  when 1
    puts "What number would you like to add to your total?"
    number = gets.chomp.to_f
    $total += number

  when 2
    puts "What number would you like to subtract from your total?"
    number = gets.chomp.to_f
    $total -= number
    
  when 3
    puts "What number would you like to multiply your total by?"
    number = gets.chomp.to_f
    $total *= number
   
  when 4
    puts "What number would you like to divide your total by??"
    number = gets.chomp.to_f
    $total /= number

  when 5
    $total = 0
  
  when 6
    puts "\nThanks for using our Calculator!\n\n\n"
    $loop = false
  
  else
    puts "Error you did not type in one of the numbers! \nTry again!";  sleep(2)
  end
  
end


$total = 0
$loop = true

while $loop
  print_header
  print_choices
end
