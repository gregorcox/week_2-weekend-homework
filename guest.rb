class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_entrance_fee(amount)
    @wallet -= amount
  end











end
