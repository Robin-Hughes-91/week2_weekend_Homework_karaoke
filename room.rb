require('pry')


class Room
  attr_reader :space, :fee, :guests_in_room, :songs


  def initialize(space, fee, guests_in_room, songs)
    @space = space
    @fee = fee
    @guests_in_room = []
    @songs = []
    @bar_tab = 0
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

  # def wallet_count()
  #   @bar_tab  wallet
  # end
  #why dont i need to say @room1 etc

  def room_space_check()
    remove_guests unless space >= guest_count
  end


  def wallet_count
    return wallet
  end



end
