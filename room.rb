class Room

  attr_reader :name, :guests, :songs, :capacity, :entrance_fee

  def initialize(name, guests, songs, capacity, entrance_fee)
    @name = name
    @guests = guests
    @songs = songs
    @capacity = capacity
    @entrance_fee = entrance_fee
  end

  def check_in_guest(guest)
    if @guests.length() < @capacity && guest.wallet >= @entrance_fee
      @guests.push(guest)
      guest.pay_entrance_fee(@entrance_fee)
    else
      return "You cannot enter the room"
    end
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs.push(song)
  end










end
