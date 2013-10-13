puts "|--- Simple calculator on ruby                             ---|"
puts "|--- By: Juan Lizarazo                                     ---|"
puts "|--- Contributor: Devan Allen                              ---|"

puts "Welcome to our basic Calculator"

def choices 
    puts "Your current total is: #{$total}" 
    puts "Enter '1' to add to our total"
    puts "Enter '2' to subtract from our total"
    puts "Enter '3' to multiply our total by a number"
    puts "Enter '4' to divide our total by a number"
    puts "Enter '5' to exit the Calculator"
    $choice = gets.chomp.to_i
    if $choice == 5
            puts "Your final total is: #{$total}"
	        puts "Thanks for using our Calculator!"
	    end
end

def calculator 
    $total = 0
    choices
    while $choice != 5
        case $choice
        when 1
            puts "What number would you like to add to your total?"
            number = gets.chomp.to_f
            if number == 0
                puts "You have to enter a number you nut!"
                $total = $total 
            else
                $total += number
            end
            choices
        when 2
            puts "What number would you like to subtract from your total?"
            number = gets.chomp.to_f
            if number == 0
                puts "Seriously? A number!"
                $total = $total 
            else
                $total -= number
            end
            choices
        when 3
            puts "What number would you like to multiply your total by?"
            number = gets.chomp.to_f
            if number == 0
                puts "You do know what a number is right?!?"
                $total = $total 
            else
                $total *= number
            end
            choices
        when 4
            puts "What number would you like to divide your total by??"
            number = gets.chomp.to_f
            if number == 0
                puts "A NUMBER come on!"
                $total = $total 
            else
                $total /= number
            end
            choices
        else
            puts "Error you did not type in one of the numbers!" 
            puts "Try again!"
            choices
        end
    end
end

calculator
