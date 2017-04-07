require 'spec_helper'

describe InlineMethod do
  describe '#get_rating' do
    context 'when more than five late deliveries' do
      it 'returns 2' do
        instance = InlineMethod.new(6)

        expect(instance.get_rating).to eq 2
      end
    end

    context 'when less than or equal five late deliveries' do
      it 'returns 1' do
        instance = InlineMethod.new(5)

        expect(instance.get_rating).to eq 1
      end
    end
  end

  describe '#more_than_five_late_deliveries' do
    context 'when number of late deliveries greater than 5' do
      it 'returns true' do
        instance = InlineMethod.new(6)
        expect(instance.more_than_five_late_deliveries).to eq true
      end
    end

    context 'when number of late deliveries less than or equal 5' do
      it 'returns false' do
        instance = InlineMethod.new(5)
        expect(instance.more_than_five_late_deliveries).to eq false
      end
    end
  end
end
