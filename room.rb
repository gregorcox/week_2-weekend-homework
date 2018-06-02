class Room

  attr_reader :name, :guests, :songs

  def initialize(name, guests, songs)
    @name = name
    @guests = guests
    @songs = songs
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end










end
