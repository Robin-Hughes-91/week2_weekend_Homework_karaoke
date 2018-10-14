class Guests
  attr_reader :name, :wallet, :favourite_song


  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end


  def wallet_total(guest)
    guest.wallet()
  end

  # def wallet_count(guest)
  #   total = 0
  #   @guest1.wallet += total
  #   return total
  # end

  def wallet_count()

  return wallet

end



end
