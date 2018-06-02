require("minitest/autorun")
require_relative("../guest")
require_relative("../room")
require_relative("../song")
require("minitest/rg")

class GuestTest < MiniTest::Test

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

  def test_guest_has_sufficient_funds__true
    assert_equal(true, @guest1.sufficient_funds?(@room1))
  end

  def test_guest_has_sufficient_funds__false
    assert_equal(false, @guest4.sufficient_funds?(@room1))
  end


end
