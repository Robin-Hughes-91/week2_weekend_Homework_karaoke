require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")


class SongTest < MiniTest::Test

  def setup # order of these is important

    # @song1 = Song.new("tune1", "country")
    # @song2 = Song.new("tune2", "pop")
    # @song3 = Song.new("song3", "metal")

    @songs = Song.new(name, genre)
  end

















end
