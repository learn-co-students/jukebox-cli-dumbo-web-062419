songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

=begin
def say_hello(name)
  "Hi #{name}!"
end
 
puts "Enter your name:"
users_name = gets.chomp
 
puts say_hello(users_name)
=end

def help
  puts "- help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs_array)
  puts songs_array
end

def play(songs_array)
  puts "Please enter a song name or number:"
  users_song = gets.chomp

  if songs_array.include?(users_song)
    puts "Playing #{users_song}"
  elsif (1..9).to_a.include?(users_song.to_i)
    puts "Playing #{songs_array[users_song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end

end

def exit_jukebox
  puts "Goodbye!"
end

def run(songs_array)
  help
  user_command = ""
  while user_command != "exit"
    puts "Please enter a command:"
    user_command = gets.chomp
    case user_command
      when "play"
        play(songs_array)
      when "list"
        list(songs_array)
      when "help"
       help
     when "exit"
       exit_jukebox
    end
  end
end

=begin

there is something wrong with this loop, and it has something to do with where get.chomp is used with user_command variable, i think? below loop runs forever until processor burns out from overheating. loop above satisfies tests. 


def run(songs_array)
  help
  puts "Please enter a command:"
  user_command = gets.chomp
  while user_command != "exit"
    case user_command
      when "play"
        play(songs_array)
      when "list"
        list(songs_array)
      when "help"
       help
     when "exit"
       exit_jukebox
    end
  end
end
=end
