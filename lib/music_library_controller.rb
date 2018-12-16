class MusicLibraryController
  
  def initialize(path = "./db/mp3s")
    music_importer = MusicImporter.new(path)
    music_importer.import
    
  end
  
  def call
    command = ""
    while command != "exit"
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      command = gets.chomp
        #     expect($stdout).to receive(:puts).with("To list all of the songs by a particular artist, enter 'list artist'.")
        # expect($stdout).to receive(:puts).with("To list all of the songs of a particular genre, enter 'list genre'.")
        # expect($stdout).to receive(:puts).with("To play a song, enter 'play song'.")
        # expect($stdout).to receive(:puts).with("To quit, type 'exit'.")
        # expect($stdout).to receive(:puts).with("What would you like to do?")
      
    end
  end
  
  def list_songs
    Song.all.sort_by { |song| song.name }.each_with_index do |song, i|
      puts "#{i+1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
    end
  end
    
  
end