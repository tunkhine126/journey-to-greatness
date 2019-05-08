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
      choices = {
        'This is fun!' => 1,
        "This is harder than I thought." => 2,
        "This is going to be a lot of work." => 3,
        "This sucks, I have no idea what I am doing." => 4,
        "#%@!!*!*!!!!" => 5,
        "OK, but it still sucks." => 6,
        "Quick, let's call it a day and say we learned something." => 7,
        "Hey, I think I'm actually catching on!" => 8,
        "WOW, look how far I've come!" => 9,
        "This is one of the things I am most proud of." => 10}
      inputs = $prompt.multi_select(message, choices, echo: false)

      inputs.each {|input|
        print "\n"
        case input
        when 1
          puts "'Just keep being true to yourself, if you're passionate about something go for it. Don't sacrifice anything, just have fun.'...Blake Lewis"
        when 2
          puts "'Live and work but do not forget to play, to have fun in life and really enjoy it.'...Eileen Caddy"
        when 3
          puts "'When I hear somebody say 'Life is hard', I am always tempted to ask 'Compared to what?'...Sydney Harris"
        when 4
          puts "'Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.'...Pele"
        when 5
          puts "'I couldn't tell you what I am going to do next 'cause I have no idea, but I am open to anything.'...Lenny Kravitz"
        when 6
          puts "'Drain the swamp.'...Donald Trump"
        when 7
          puts "'Technology doesn't address everything - for example, air travel still sucks.'...Brad Feld"
        when 8
          puts "'I'm only going to get better and better. Not going to get worse.'...Jason Pierre-Paul"
        when 9
          puts "'We know we are on the right path. Our journey is not finished, but we have come a long way.'...Muhammadu Buhari"
        when 10
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
