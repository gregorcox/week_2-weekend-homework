require("minitest/autorun")
require_relative("../guest")
require_relative("../room")
require_relative("../song")
require("minitest/rg")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("John", 30, "Stairway to Heaven")
    @guest2 = Guest.new("Zsolt", 80, "Africa")
    @guest3 = Guest.new("Tony", 40, "We Are the Champions")
    @guest4 = Guest.new("Fred", 2, "Smooth Criminal")
    @song1 = Song.new("Bohemian Rhapsody", "Queen")
    @song2 = Song.new("Stairway to Heaven", "Led Zeppelin")
    @song3 = Song.new("Wish You Were Here", "Pink Floyd")
    @room1 = Room.new("Rock", [@guest1, @guest2], [@song1, @song2], 10, 15)
    @room2 = Room.new("Classic Rock", [@guest1, @guest2], [@song1, @song2, @song3], 2, 5)
  end

  def test_pay_entrance_fee
    @guest3.pay_entrance_fee(@room1.entrance_fee)
    assert_equal(25, @guest3.wallet)
  end

  def test_check_if_room_has_favourite_song__true
    assert_equal("Whoo!", @guest1.check_if_room_has_favourite_song(@room1))
  end

  def test_check_if_room_has_favourite_song__false
    assert_equal("My song isn't here", @guest2.check_if_room_has_favourite_song(@room1))
  end

end
