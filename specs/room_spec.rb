require("minitest/autorun")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("John")
    @guest2 = Guest.new("Zsolt")
    @guest3 = Guest.new("Tony")
    @song1 = Song.new("Bohemian Rhapsody", "Queen")
    @song2 = Song.new("Stairway to Heaven", "Led Zeppelin")
    @song3 = Song.new("Wish You Were Here", "Pink Floyd")
    @room1 = Room.new("Rock", [@guest1], [@song1, @song2])
  end












end
