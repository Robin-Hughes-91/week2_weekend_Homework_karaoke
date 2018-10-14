require('pry')

require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")
require_relative("../songs")
require_relative("../room")



class RoomTest < MiniTest::Test

  def setup # order of these is important

    @guest1 = Guest.new("Robin", 20, "song1")
    @guest2 = Guest.new("Michael", 20, "song2")
    @guest3 = Guest.new("Jack", 20, "song3")
    @song1 = Song.new("song1")
    @song2 = Song.new("song2")
    @song3 = Song.new("song3")
    @room1 = Room.new(3, 40, [], [], 0)

    @room = Room.new(2, 10, [], [], 0)
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
    assert_equal(40, @room1.wallet_count)
  end


  def test_can_pay_fee()
    @room1.add_guests(@guest1)
    @room1.add_guests(@guest2)
    result = @room1.can_pay_fee
    assert_equal(true, result)
  end

  def test_add_fee_to_tab
    @room1.add_guests(@guest1)
    @room1.add_guests(@guest2)
    result = @room1.add_fee_to_tab
    assert_equal(40, result)
  end

  def test_favourite_song_comes_on()
    @room1.add_song(@song1)
    @room1.add_guests(@guest1)
    @room1.add_guests(@guest2)
    result = @room1.favourite_song_comes_on()
    assert_equal("wooooo!", result)
  end


end
