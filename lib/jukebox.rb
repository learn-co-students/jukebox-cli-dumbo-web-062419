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

def help
  puts "I accept the following commands:"
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end

def list(array)
  array.each_with_index { |s, i|
    puts "#{i+1}. #{s}"
   }
end

def play(array)
  puts "Please enter a song name or number:"
  reply = gets.chomp
  if (1..9).to_a.include?(reply.to_i)
    puts "Playing #{array[reply.to_i-1]}"
  elsif array.include?(reply)
    puts "Playing #{reply}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:" 
  response = gets.chomp
  case response
  when "list"
    list(array)
  when "play"
    play(array)
  when "help"
    help
  else "exit"
    exit_jukebox
  end
end
