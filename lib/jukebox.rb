# binding.pry
require 'pry'
require 'readline'
require 'byebug'

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

# def say_hello(name)
#   "Hi #{name}"
# end

# puts "Enter your name: "
# users_name = gets.chomp

# puts say_hello(users_name)

# Lists out the possible commands
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

# Lists out the available songs
def list(songs)
  songs.each_with_index do |song_name, index|
    puts "#{index + 1}. #{song_name}"
  end
end

# Can find a song when given a number from the user
# Can find a song when given a full song name
# Returns an error when given a number that does not correspond to a song
# Returns an error when given a name that does not correspond to an existing song
# ???????? When running through `learn`, receiving an error:
# An error occurred while loading ./spec/jukebox_spec.rb.
# Failure/Error: users_song_choice = gets.chomp

# Errno::ENOENT:
#   No such file or directory @ rb_sysopen - --format
def play(songs)
  puts "Please enter a song name or number:"
  users_song_choice = gets.chomp

  return_statement = "Invalid input, please try again"

  songs.each_with_index do |song_name, index|
    if users_song_choice == song_name || users_song_choice.to_i == index + 1
      return_statement = "Playing #{song_name}"
    end

  end

  puts return_statement
end

play(songs)

# Puts out: "Goodbye"
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_command = gets.chomp

  while user_command != "exit"
    puts "Please enter a command:"
    user_command = gets.chomp
    if user_command == "help"
      help
    elsif user_command == "list"
      list(songs)
    elsif user_command == "play"
      play(songs)
    end
  end

  if user_command == "exit"
    exit_jukebox
  end
end

# run(songs)