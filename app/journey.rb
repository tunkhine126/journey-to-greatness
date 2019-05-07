class Journey

    def start
      puts "WELCOME TO YOUR JOURNEY TO GREATNESS!"
      puts "When did you start with your cohort?"
  
      menu
    end
  
    def menu
      puts "1. Login"
      puts "2. New User"
      puts "3. Exit" 
  
      choice = gets.chomp.to_i
  
        case choice
        when 1
          
        when 2
          sts_level
        
        when 3

        else
          puts "Hmmm...not one of the choices. Please try again."
          menu
        end
        
      end

    def sts_level
      puts "
         ********************************************************
         Which one of these statements do you most resonate with?
         ********************************************************" 
        puts "1. This is fun!"    
         puts "2. This is harder than I thought."
         puts "3. This is going to be a lot of work."
         puts "4. This sucks, I have no idea what I am doing."
         puts "5. #%@!!*!*!!!!"
         puts "6. OK, but it still sucks."
         puts "7. Quick, let's call it a day and say we learned something."
         puts "8. Hey, I think I'm actually catching on!"
         puts "WOW, look how far I've come!"
         puts "10. This is one of the things I am most proud of."
  
      choice = gets.chomp.to_i
  
        case choice
        when 1
          
        when 2
          
        else
          puts "Hmmm...not one of the choices. Please try again."
          sts_level
        end
        
      end
    end

    
    
        
