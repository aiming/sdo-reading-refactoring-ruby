require 'spec_helper'

describe ExtractMethod do
  describe '#print_owing' do
    it 'prints owing' do
      name = 'extract-method'
      orders = (1..10).map { |num| double('order', amount: num) }

      instance = ExtractMethod.new(name, orders)
      amount = orders.inject(0.0) { |result, order| result + order.amount }

      expect { instance.print_owing }.to output(<<EOS
**********************
****Customer Owes*****
**********************
name: #{name}
amount: #{amount}
EOS
      ).to_stdout
    end
  end
end
