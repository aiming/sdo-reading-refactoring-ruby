require 'spec_helper'

describe InlineTemp do
  describe '#order_base_price_greater_than_1000?' do
    context 'when an order base price greater than 1000' do
      it 'returns true' do
        an_order = double(base_price: 1001)
        instance = InlineTemp.new(an_order)

        expect(instance.order_base_price_greater_than_1000?).to eq true
      end
    end

    context 'when an order base price less than or equal 1000' do
      it 'returns true' do
        an_order = double(base_price: 1000)
        instance = InlineTemp.new(an_order)

        expect(instance.order_base_price_greater_than_1000?).to eq false
      end
    end
  end
end
