require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")


class SongTest < MiniTest::Test

  def setup # order of these is important

    @song1 = Song.new("tune1")
    @song2 = Song.new("tune2")
    @song3 = Song.new("song3")

    @songs = Song.new(name, genre)
  end

















end
