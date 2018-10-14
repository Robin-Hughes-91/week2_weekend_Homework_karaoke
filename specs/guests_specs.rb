require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")
require_relative("../songs")


class GuestsTest < MiniTest::Test

  def setup # order of these is important
    @guest1 = Guests.new("Robin", 30, "song1")
    @guest2 = Guests.new("Michael", 30, "song2")
    @guest3 = Guests.new("Jack", 30, "song3")
    @guests = Guests.new(name, wallet, favourite_song)
  end

  def test_wallet_total()
    @guests.wallet_total(@guest1)
    assert_equal(30, @guest1.wallet)
  end


  # def test_wallet_count
  #   @guests.wallet_count(@guest1)
  #   assert_equal(60, total())
  # end
















end
