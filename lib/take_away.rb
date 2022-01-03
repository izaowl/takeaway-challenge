class Take_away
  attr_reader :orders, :payment
  
  def initialize
    @orders = []
  end

  def add_order(order)
    if order.empty?
        fail "Your order has no dishes added"
    else
      @orders << order
    end
  end
  
  def accept_payment(payment)
    @payment = payment
  end
end