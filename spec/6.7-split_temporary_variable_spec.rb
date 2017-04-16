require 'spec_helper'

describe SplitTemporaryVariable do
  describe '#distance_traveled' do
    instance = SplitTemporaryVariable.new(10, 10, 5, 5)

    context 'secondary_time <= 0' do
      it 'returns 12.5' do
        result = instance.distance_traveled(5)
        expect(result).to eq 12.5
      end
    end

    context 'secondary_time > 0' do
      it 'returns 162.5' do
        result = instance.distance_traveled(10)
        expect(result).to eq 162.5
      end
    end
  end
end
