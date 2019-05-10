class Journey

    def run
      system('clear')
      puts "WELCOME TO YOUR JOURNEY TO GREATNESS!\n"
      print "\nPress Enter to Begin!! "
      gets
      print "\n"

      menu
    end

    def menu
      options = ['Login', 'New user', 'Exit']
      choice = $prompt.select("Are you a existing user?\n", options)

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
      print "\nPlease enter your first name: "
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
      system('clear')
      print "Please enter your first name: "
      fname = gets.chomp.capitalize
      print "Please enter your last name:  "
      lname = gets.chomp.capitalize

      menu if fname == 'back' || lname == 'back'

      msg="\n#{fname} #{lname} <== is this correct?\n"


       correct = ['Yes', 'No']
       choice = $prompt.select(msg, correct)

      case choice
      when 'Yes'
        user1 = User.create(firstname: fname, lastname: lname)
        stress(user1)
      when 'No'
        new_user
      end
    end

    def stress(user)
      system('clear')
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
      print "\n"
        case input
        when 1
          stress_level = 1
          puts "'Just keep being true to yourself, if you're passionate about something go for it. Don't sacrifice anything, just have fun.'...Blake Lewis"
        when 2
          stress_level = 2
          puts "'Live and work but do not forget to play, to have fun in life and really enjoy it.'...Eileen Caddy"
        when 3
          stress_level = 3
          puts "'When I hear somebody say 'Life is hard', I am always tempted to ask 'Compared to what?'...Sydney Harris"
        when 4
          stress_level = 4
          puts "'Success is no accident. It is hard work, perseverance, learning, studying, sacrifice and most of all, love of what you are doing or learning to do.'...Pele"
        when 5
          stress_level = 5
          puts "'I couldn't tell you what I am going to do next 'cause I have no idea, but I am open to anything.'...Lenny Kravitz"
        when 6
          stress_level = 6
          puts "'Drain the swamp.'...Donald Trump"
        when 7
          stress_level = 7
          puts "'Technology doesn't address everything - for example, air travel still sucks.'...Brad Feld"
        when 8
          stress_level = 8
          puts "'I'm only going to get better and better. Not going to get worse.'...Jason Pierre-Paul"
        when 9
          stress_level = 9
          puts "'We know we are on the right path. Our journey is not finished, but we have come a long way.'...Muhammadu Buhari"
        when 10
          stress_level = 10
          puts "'Honestly, it's the most amazing feeling in the world to be able to work on something that you're really proud of.'...Dania Ramirez"
        end
        user.update(stress: stress_level)

      print "\n Press ENTER to continue..."
      gets

      puts "\nHow would you describe what you're feeling at this moment?"
      print " => "
      input = gets.chomp

      new_feel = Feeling.create(name: input, stress: stress_level)
      journal_entry(user, new_feel)
      end

      def journal_entry(user, feeling)
        puts "\nIf you were going to encourage someone else who felt this way, what would you want to tell them?\n\nTake a moment to think about what you want to write.\n"
        print " => "
        entry = gets.chomp
        puts "\nWhat's the title of this journal?"
        print " => "
        title = gets.chomp
        Reflection.create(date: Time.now, title: title, entry: entry, user_id: user.id, feeling_id: feeling.id)
        system('clear')
        display_existing(user)
      end

      def display_existing(user)
        user = User.find(user.id)
        system('clear')
        options = ['Create new entry', 'View previous entries', 'Logout']
        choice = $prompt.select("What would you like to do?\n", options)

        case choice
        when 'Create new entry'
          stress(user)
        when 'View previous entries'
          old_entries(user)
        when 'Logout'
          system('clear')
          menu
        end
      end

      def old_entries(user)
        user = User.find(user.id)
        system('clear')

        message = "Displaying old reflection entries for #{user.firstname}\n"
        refs = Reflection.all.select {|r| r.user_id == user.id}
        options = refs.map(&:title).reverse
        # options ||= []
        options << 'Return to main menu'
        
        input = $prompt.select(message, options)

          if input == 'Return to main menu'
            display_existing(user)
          else
            system('clear')
            journal = Reflection.find_by(title: input)
            entry_options(user, journal)
          end
      end

      def entry_options(user, journal)
        user = User.find(user.id)
        system('clear')
        input = nil
        puts %Q["#{journal.title}" by #{fullname(user)}]
        choices = ["View entry", "Update entry", "Delete entry", "back"]
        input = $prompt.select("What would you like to do with this entry?\n", choices)

        case input
        when "View entry"
          system('clear')
          puts " On #{journal.date.strftime("%m/%d/%Y")} -- #{user.firstname} wrote:"
          puts "\n "+journal.entry
          print "\nPress ENTER to return..."
          gets
          entry_options(user, journal)
        when "Update entry"
          puts "\n Write a new entry for this reflection."
          print "\n => "
          journal.entry = gets.chomp
          journal.save
          puts "This journal has been updated! Press ENTER to return..."
          entry_options(user, journal)
        when "Delete entry"
          input = $prompt.select("\nAre you sure?", ["yes", "no"])
          journal.destroy if input == "yes"
          old_entries(user)
        when "back"
          old_entries(user)
        end
      end

      def fullname(user)
        user.firstname+" "+user.lastname
      end
end
