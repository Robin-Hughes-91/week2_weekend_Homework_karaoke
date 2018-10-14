require('pry')

require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")
require_relative("../songs")
require_relative("../room")



class RoomTest < MiniTest::Test

  def setup # order of these is important

    # @guest1 = Guests.new("Robin", 30, "song1")
    # @guest2 = Guests.new("Michael", 30, "song2")
    # @guest3 = Guests.new("Jack", 30, "song3")
    @song1 = Songs.new("song1", "pop")
    @song2 = Songs.new("song2", "rock")
    @song3 = Songs.new("song3", "metal")
    @room1 = Room.new(3, 60, [], [])

    @room = Room.new(2, 10, [], [])
  end

  def test_add_guests()
    @room1.add_guests(@guest1)
    @room1.add_guests(@guest2)
    assert_equal(2, @room1.guest_count())
  end


  def test_add_song()
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    assert_equal(2, @room1.song_count())
  end

  def test_remove_guests()
    @room1.add_guests(@guest1)
    @room1.add_guests(@guest2)
    @room1.remove_guests()
    assert_equal(0, @room1.guest_count())
  end

  def test_room_space_check()
    @room1.add_guests(@guest1)
    @room1.add_guests(@guest2)
    @room1.add_guests(@guest3)
    @room1.room_space_check()
    assert_equal(3, @room1.guest_count())
  end


  def test_wallet_count()
    @room1.add_guests(@guest1)
    @room1.add_guests(@guest2)
    @guest1.wallet_count
    assert_equal(60, @guest1.wallet_count)
  end


  # def test_can_pay_fee()
  #   @room1.add_guests(@guest1)
  #   @room1.add_guests(@guest2)
  #   assert_equal(60, @room1.can_pay_fee())
  # end




end
