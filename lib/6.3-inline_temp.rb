class InlineTemp
  attr_reader :an_order

  def initialize(an_order)
    @an_order = an_order
  end

  def order_base_price_greater_than_1000?
    return (an_order.base_price > 1000)
  end
end
