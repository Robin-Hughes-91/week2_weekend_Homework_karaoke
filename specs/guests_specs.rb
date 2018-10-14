require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")
require_relative("../songs")


class GuestsTest < MiniTest::Test

  def setup # order of these is important
    # @guest1 = Guest.new("Robin", 20, "song1")
    # @guest2 = Guest.new("Michael", 20, "song2")
    # @guest3 = Guest.new("Jack", 20, "song3")
    @guests = Guest.new(name, wallet, favourite_song)
  end

  # def test_wallet_total()
  #   @guests.wallet_total(@guest1)
  #   assert_equal(30, @guest1.wallet)
  # end


  # def test_wallet_count
  #   @guests.wallet_count(@guest1)
  #   assert_equal(60, total())
  # end
















end
