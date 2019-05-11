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
  choice.match(/\D/i) && songs.include?(choice) ? put "Playing #{choice}" : choice.match(/\d/) && choice <= songs.size ? puts "Playing #{songs[choice + 1]}" : puts "Invalid input, please try again"
end