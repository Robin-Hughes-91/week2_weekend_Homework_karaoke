require('pry')


class Room
  attr_reader :space, :fee, :guests_in_room, :songs, :bar_tab


  def initialize(space, fee, guests_in_room, songs, bar_tab)
    @space = space
    @fee = fee
    @guests_in_room = []
    @songs = []
    @bar_tab = bar_tab
  end

  def add_song(song)
    @songs << song
  end

  def song_count()
    @songs.length
  end

  def add_guests(guest)
    @guests_in_room << guest
  end

  def guest_count()
    @guests_in_room.length
  end

  def remove_guests()
    @guests_in_room.clear()
  end

  def room_space_check()
    remove_guests unless space >= guest_count
  end

  def wallet_count()
    total = 0
    for guest in @guests_in_room
      total += guest.wallet
    end
    return total
  end

  def can_pay_fee()
    return wallet_count - @fee >= 0
  end

  def add_fee_to_tab
    @fee += bar_tab
  end

  def favourite_song_comes_on
    for guest in @guests_in_room
     for song in @songs
      if song.name == guest.favourite_song
        return "wooooo!"
        end
      end
    end
  end










  end
