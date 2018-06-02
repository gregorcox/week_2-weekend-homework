require("minitest/autorun")
require_relative("../room")
require_relative("../song")
require_relative("../guest")
require("minitest/rg")

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("John", 30)
    @guest2 = Guest.new("Zsolt", 80)
    @guest3 = Guest.new("Tony", 40)
    @guest4 = Guest.new("Fred", 2)
    @song1 = Song.new("Bohemian Rhapsody", "Queen")
    @song2 = Song.new("Stairway to Heaven", "Led Zeppelin")
    @song3 = Song.new("Wish You Were Here", "Pink Floyd")
    @room1 = Room.new("Rock", [@guest1, @guest2], [@song1, @song2], 10, 15)
    @room2 = Room.new("Classic Rock", [@guest1, @guest2], [@song1, @song2, @song3], 2, 5)
  end

  def test_check_in_guest_to_room__under_capacity
    @room1.check_in_guest(@guest3)
    assert_equal(3, @room1.guests.length())
  end

  def test_check_in_guest_to_room__over_capacity
    @room2.check_in_guest(@guest3)
    assert_equal(2, @room2.guests.length())
  end

  def test_check_in_guest_to_room__sufficient_funds
    @room1.check_in_guest(@guest3)
    assert_equal(25, @guest3.wallet())
    assert_equal(3, @room1.guests.length())
  end

  def test_check_in_guest_to_room__insufficient_funds
    @room1.check_in_guest(@guest4)
    assert_equal(2, @guest4.wallet)
    assert_equal(2, @room1.guests.length())
  end

  def test_check_out_guest_from_room
    @room1.check_out_guest(@guest1)
    assert_equal(1, @room1.guests.length())
  end

  def test_add_song_to_room
    @room1.add_song(@song3)
    assert_equal(3, @room1.songs.length())
  end

end
