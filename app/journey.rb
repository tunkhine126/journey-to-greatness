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
      print "Please enter your first name: "
      fname = gets.chomp.capitalize

      print "Please enter your last name:  "
      lname = gets.chomp.capitalize

      menu if fname == 'back' || lname == 'back'

      user = User.find_by(firstname: fname, lastname: lname)
      if user == nil
        puts "invalid name, Try again"
        login
      else
        display_existing(user)
      end


    end

    def new_user
      print "Please enter your first name: "
      fname = gets.chomp.capitalize
      print "Please enter your last name:  "
      lname = gets.chomp.capitalize

      menu if fname == 'back' || lname == 'back'

      msg="#{fname} #{lname} <== is this correct?\n"


       correct = ['Yes', 'No']
       choice = $prompt.select(msg, correct)

      case choice
      when 'Yes'
        user1 = User.create(firstname: fname, lastname: lname) # => (firstname: gets.chomp.capitalize, lastname: gets.chomp.capitalize, stress: nil, entry: nil)
        stress(user1)
      when 'No'
        new_user
      end
    end

    def stress(user1) #passing down user1
      message = "
         ********************************************************
         Which one of these statements do you most resonate with?
         ********************************************************\n"
      choices = {
        '1. This is fun!' => 1,
        "2. This is harder than I thought." => 2,
        "3. This is going to be a lot of work." => 3,
        "4. This sucks, I have no idea what I am doing." => 4,
        "5. #%@!!*!*!!!!" => 5,
        "6. OK, but it still sucks." => 6,
        "7. Quick, let's call it a day and say we learned something." => 7,
        "8. Hey, I think I'm actually catching on!" => 8,
        "9. WOW, look how far I've come!" => 9,
        "10. This is one of the things I am most proud of." => 10}
      input = $prompt.select(message, choices, echo: false)


        case input
        when 1
          stress_level = 1
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 1, date: DateTime.now)
          #
          #userFeel.save
          puts "'Just keep being true to yourself, if you're passionate about something go for it. Don't sacrifice anything, just have fun.'...Blake Lewis"
        when 2
          stress_level = 2
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 2, date: DateTime.now)
          #
          #userFeel.save
          puts "'Live and work but do not forget to play, to have fun in life and really enjoy it.'...Eileen Caddy"
        when 3
          stress_level = 3
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 3, date: DateTime.now)
          #
          #userFeel.save
          puts "'When I hear somebody say 'Life is hard', I am always tempted to ask 'Compared to what?'...Sydney Harris"
        when 4
          stress_level = 4
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 4, date: DateTime.now)
          #
          #userFeel.save
          puts "'Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.'...Pele"
        when 5
          stress_level = 5
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 5, date: DateTime.now)
          #
          #userFeel.save
          puts "'I couldn't tell you what I am going to do next 'cause I have no idea, but I am open to anything.'...Lenny Kravitz"
        when 6
          stress_level = 6
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 6, date: DateTime.now)
          #
          #userFeel.save
          puts "'Drain the swamp.'...Donald Trump"
        when 7
          stress_level = 7
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 7, date: DateTime.now)
          #
          #userFeel.save
          puts "'Technology doesn't address everything - for example, air travel still sucks.'...Brad Feld"
        when 8
          stress_level = 8
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 8, date: DateTime.now)
          #
          #userFeel.save
          puts "'I'm only going to get better and better. Not going to get worse.'...Jason Pierre-Paul"
        when 9
          stress_level = 9
          user1.stress = stress_level
          userFeel = Feeling.new(stress: 9, date: DateTime.now)
          #
          #userFeel.save
          puts "'We know we are on the right path. Our journey is not finished, but we have come a long way.'...Muhammadu Buhari"
        when 10
          puts "'Honestly, it's the most amazing feeling in the world to be able to work on something that you're really proud of.'...Dania Ramirez"

        end

      print "\n Press ENTER to continue..."
      gets

      journal_entry(user1)
      end

      def journal_entry(user1)
        puts "\nIf you were going to encourage someone else who felt this way, what would you want to tell them?\n\nTake a moment to think about what you want to write.\n"
        puts "What's the title of this journal?"
        j_title = gets.chomp
        j_entry = Reflection.new(firstname: user1.firstname, lastname: user1.lastname, stress: user1.stress, title: j_title)

        #j_entry.save
      end

      def display_existing(user)
        options = ['old Entries', 'New Entry', 'Logout']
        choice = $prompt.select("What would you like to do?\n", options)

        case choice
        when 'old Entries'
          #display old Entries
        when 'New Entry'
          stress(user)
        when 'Logout'
          menu
        end


      end





    end
