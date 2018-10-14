require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")


class SongsTest < MiniTest::Test

  def setup # order of these is important

    # @song1 = Songs.new("tune1", "country")
    # @song2 = Songs.new("tune2", "pop")
    # @song3 = Songs.new("song3", "metal")

    @songs = Songs.new(name, genre)
  end

















end
