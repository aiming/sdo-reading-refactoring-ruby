require 'spec_helper'

describe ReplaceTempWithQuery do
  describe '#price' do
    context 'when base price greater than 1000' do
      it 'returns price calculated by high discount rate' do
        instance = ReplaceTempWithQuery.new(quantity: 1, item_price: 1001)

        expect(instance.price).to be_within(0.1).of(950.95)
      end
    end

    context 'when base price less than or equal 1000' do
      it 'returns price calculated by low discount rate' do
        instance = ReplaceTempWithQuery.new(quantity: 1, item_price: 1000)

        expect(instance.price).to be_within(0.1).of(980)
      end
    end
  end
end
