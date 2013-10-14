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
  puts "Your final total is: #{$total} \n\nThanks for using our Calculator!" if choice == 5

end

def run_calculator(choice)

  case choice
    
  when 1
    puts "What number would you like to add to your total?"
    number = gets.chomp.to_f
    if number == 0
        puts "You have to enter a number you nut!"
    else
        $total += number
    end
    
  when 2
    puts "What number would you like to subtract from your total?"
    number = gets.chomp.to_f
    if number == 0
        puts "Seriously? A number!"
    else
        $total -= number
    end

  when 3
    puts "What number would you like to multiply your total by?"
    number = gets.chomp.to_f
    
    if number == 0
        puts "You do know what a number is right?!?"
    else
        $total *= number
    end
    
  when 4
    puts "What number would you like to divide your total by??"
    number = gets.chomp.to_f
    if number == 0
      puts "A NUMBER come on!"
    else
      $total /= number
    end

  when 5
    $total = 0
  
  when 6
    puts "Thanks for using our Calculator!\n\n\n"
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
