class Journey

    def start
      puts "WELCOME TO YOUR JOURNEY TO GREATNESS!"
      puts "Press Enter to Begin!!"

      choice = gets.chomp.to_i

      menu

    end

    def menu
      options = ['Login', 'New user', 'Exit']
      choice = $prompt.select("Are you a existing user?\n", options)

      # puts "1. Login"
      # puts "2. New User"
      # puts "3. Exit"

      # choice = gets.chomp.to_i

        case choice
        when 'Login'
          login
        when 'New user'
          new_user
        when 'Exit'
          exit
        end

      end

    def login
      puts "Please enter your username"

      choice = gets.chomp
    end

    def new_user
      puts "Please enter a new username"

       username = User.new(name: gets.chomp)
       msg="#{username.name} <== is this correct?\n"


       correct = ['Yes', 'No']
       choice = $prompt.select(msg, correct)

      case choice
      when 'Yes'
        #username.save
        stress
      when 'No'
        new_user
      end
    end

    def stress
      message = "
         ********************************************************
         Which one of these statements do you most resonate with?
         ********************************************************\n"
      choices = [
        'This is fun!',
        "This is harder than I thought.",
        "This is going to be a lot of work.",
        "This sucks, I have no idea what I am doing.",
        "#%@!!*!*!!!!",
        "OK, but it still sucks.",
        "Quick, let's call it a day and say we learned something.",
        "Hey, I think I'm actually catching on!",
        "WOW, look how far I've come!",
        "This is one of the things I am most proud of."]
      inputs = $prompt.multi_select(message, choices)

      inputs.each {|input|
        print "\n"
        case input
        when 'This is fun!'
          puts "'Just keep being true to yourself, if you're passionate about something go for it. Don't sacrifice anything, just have fun.'...Blake Lewis"
        when 'This is harder than I thought.'
          puts "'Live and work but do not forget to play, to have fun in life and really enjoy it.'...Eileen Caddy"
        when 'This is going to be a lot of work.'
          puts "'When I hear somebody say 'Life is hard', I am always tempted to ask 'Compared to what?'...Sydney Harris"
        when 'This sucks, I have no idea what I am doing.'
          puts "'Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.'...Pele"
        when '#%@!!*!*!!!!'
          puts "'I couldn't tell you what I am going to do next 'cause I have no idea, but I am open to anything.'...Lenny Kravitz"
        when 'OK, but it still sucks.'
          puts "'Drain the swamp.'...Donald Trump"
        when "Quick, let's call it a day and say we learned something."
          puts "'Technology doesn't address everything - for example, air travel still sucks.'...Brad Feld"
        when "Hey, I think I'm actually catching on!"
          puts "'I'm only going to get better and better. Not going to get worse.'...Jason Pierre-Paul"
        when "WOW, look how far I've come!"
          puts "'We know we are on the right path. Our journey is not finished, but we have come a long way.'...Muhammadu Buhari"
        when "This is one of the things I am most proud of."
          puts "'Honestly, it's the most amazing feeling in the world to be able to work on something that you're really proud of.'...Dania Ramirez"
        # else
        #   puts "Hmmm...not one of the choices. Please try again."
        #   sts_level
        end
      }
      print "\n Press ENTER to continue..."
      gets

      end
    end
