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
	
	puts "I accept the following commands:\n
	- help : displays this help message\n
	- list : displays a list of songs you can play\n
	- play : lets you choose a song to play\n
	- exit : exits this program"
end

def list(songs)
	songs.each_with_index do |song, i|
		puts "#{i + 1}. #{song}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	inp = gets.chomp
	# if inp is a valid array index or...
	if songs.index(inp) != nil
		puts "Playing #{songs[songs.index(inp)]}"
	elsif inp == "0" || inp.to_i > 0 && inp.to_i < songs.length
		puts "Playing #{songs[inp.to_i - 1]}"
	else
		puts "Invalid input, please try again"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def run songs
	help
	# keep running as long as users input is not exit.
	comm = ""
	while comm != "exit"
		puts "Please enter a command:"
		comm = gets.chomp
		case comm
		when "list"
			list songs
		when "play"
			play songs
		when "help"
			help
		when "exit"
			exit_jukebox
		end
	end
end

