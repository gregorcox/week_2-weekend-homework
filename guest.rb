class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def sufficient_funds?(room)
    return @wallet >= room.entrance_fee()
  end

  def pay_entrance_fee(room)
    if sufficient_funds?(room)
      @wallet -= room.entrance_fee()
    end
  end











end
