require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")
require_relative("../songs")


class GuestTest < MiniTest::Test

  def setup # order of these is important
    @guest1 = Guest.new("Robin", 20, "song1")
    @guest2 = Guest.new("Michael", 20, "song2")
    @guest3 = Guest.new("Jack", 20, "song3")
  end

  def test_wallet_total()
    result = @guest1.wallet_total()
    assert_equal(20, result)
  end

  def test_wallet_total()
    guest = Guest.new("Robin", 20, "song1")
    assert_equal(20, guest.wallet)
  end


















end
