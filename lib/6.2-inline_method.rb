class InlineMethod
  def initialize(number_of_late_deliveries)
    @number_of_late_deliveries = number_of_late_deliveries
  end

  def get_rating
    @number_of_late_deliveries > 5 ? 2 : 1
  end

  def more_than_five_late_deliveries
    @number_of_late_deliveries > 5
  end
end
