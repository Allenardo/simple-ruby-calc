def calculator 
    $total = 0
    def input 
        puts "Your current total is: #{$total}"
        puts "Enter a number" 
        puts "-- 1 to add"
        puts "-- 2 to subtract"
        puts "-- 3 to multiply"
        puts "-- 4 to divide"
        puts "-- 5 to exit"
        choice = gets.chomp.to_i
        case 
        when choice == 1
            puts "What number would you like to add to your total?"
            number = gets.chomp.to_f
            if number == 0
                puts "You have to enter a number you nut!"
                $total = $total 
            else
                $total += number
            end
            input
        when choice == 2
            puts "What number would you like to subtract from your total?"
            number = gets.chomp.to_f
            if number == 0
                puts "You have to enter a number you nut!"
                $total = $total 
            else
                $total -= number
            end
            input
        when choice == 3
            puts "What number would you like to multiply your total by?"
            number = gets.chomp.to_f
            if number == 0
                puts "You have to enter a number you nut!"
                $total = $total 
            else
                $total *= number
            end
            input
        when choice == 4
            puts "What number would you like to divide your total by??"
            number = gets.chomp.to_f
            if number == 0
                puts "You have to enter a number you nut!"
                $total = $total 
            else
                $total /= number
            end
            input
        when choice == 5
            puts "Your final total is: #{$total}"
        else
            puts "Error you did not type in one of the numbers!" 
            puts "Try again!"
            input
        end
    end
    input
end

calculator
