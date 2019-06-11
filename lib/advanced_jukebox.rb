#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/laurellmccaffrey/Development/jukebox-cli-dumbo-web-062419/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/laurellmccaffrey/Development/jukebox-cli-dumbo-web-062419/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/laurellmccaffrey/Development/jukebox-cli-dumbo-web-062419/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/laurellmccaffrey/Development/jukebox-cli-dumbo-web-062419/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/laurellmccaffrey/Development/jukebox-cli-dumbo-web-062419/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/laurellmccaffrey/Development/jukebox-cli-dumbo-web-062419/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/laurellmccaffrey/Development/jukebox-cli-dumbo-web-062419/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:"
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"
end



def list(my_songs)
  my_songs.collect {|song, v| puts song }
end


def play(my_songs)
  puts "Please enter a song name:"
  reply = gets.chomp
  my_songs.keys.each do |song|
    if reply == song
      picked = song
    end
  end
  if picked == nil
    puts "Invalid input, please try again"
  else
    puts "Playing #{picked}"
    system "open #{my_songs[picked]}"
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
