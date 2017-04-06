class ExtractMethod
  def initialize(name, orders)
    @name = name
    @orders = orders
  end

  def print_owing
    outstanding = 0.0

    print_banner

    # 勘定
    @orders.each do |order|
      outstanding += order.amount
    end

    # 詳細
    puts "name: #{@name}"
    puts "amount: #{outstanding}"
  end

  private

  def print_banner
    puts "**********************"
    puts "****Customer Owes*****"
    puts "**********************"
  end
end
