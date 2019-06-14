require 'pry'

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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs_array)
  songs_array.each_with_index do |songs, index|
    puts "#{index + 1}. #{songs}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_selection = gets.chomp
    if user_selection.to_i.between?(1, 9)
      puts "Playing #{songs_array[user_selection.to_i - 1]}"
    elsif song_array.include?(user_selection)
      puts "Playing #{user_selection}"
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

#def run
#  help
#  puts "Please enter a command:"
#  users_command = get.chomp
#  if users_command == "exit"
#    THEN STOP...
#  else
#  end
#end



#puts "Please enter a command:"
#users_command = gets.chomp
