class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def sufficient_funds?(room)
    return @wallet >= room.entrance_fee()
  end











end
