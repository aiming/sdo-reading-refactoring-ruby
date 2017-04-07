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
end
