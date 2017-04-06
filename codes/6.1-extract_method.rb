def print_owing
  outstanding = 0.0

  # バナー
  puts "**********************"
  puts "****Customer Owes*****"
  puts "**********************"

  # 勘定
  @orders.each do |order|
    outstanding += order.amount
  end

  # 詳細
  puts "name: #{@name}"
  puts "amount: #{outstanding}"
end
