def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each do |song|
    puts "#{songs.index(song) + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = STDIN.gets.chomp
  msg = ""
  if choice !~ /\D/
    msg = "Playing #{songs[choice.to_i - 1]}"
  end
  #binding.pry
  puts msg
end

#play(songs)