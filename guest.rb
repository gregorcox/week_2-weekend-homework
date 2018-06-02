class Guest

  attr_reader :name, :wallet, :favourite_song, :songs_sung

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
    @songs_sung = []
  end

  def pay_entrance_fee(amount)
    @wallet -= amount
  end

  def check_if_room_has_favourite_song(room)
    response = "My song isn't here"
    for song in room.songs
      if song.title == @favourite_song
        response = "Whoo!"
      end
    end
    return response
  end

  def song_count
    songs_sung.length()
  end

  def sing(song)
    @songs_sung.push(song)
  end

end
