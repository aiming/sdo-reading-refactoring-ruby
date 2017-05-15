require 'spec_helper'

describe RemoveAssignmentsToParameters do
  describe '#discount' do
    instance = RemoveAssignmentsToParameters.new

    context 'input_val > 50, quantity > 100, year_to_date > 10000' do
      it 'returns 93' do
        expect(instance.discount(100, 200, 20000)).to eq 93
      end
    end

    context 'input_val > 50, quantity > 100, year_to_date <= 10000' do
      it 'returns 97' do
        expect(instance.discount(100, 200, 10000)).to eq 97
      end
    end

    context 'input_val > 50, quantity <= 100, year_to_date > 10000' do
      it 'returns 94' do
        expect(instance.discount(100, 100, 20000)).to eq 94
      end
    end

    context 'input_val > 50, quantity <= 100, year_to_date <= 10000' do
      it 'returns 98' do
        expect(instance.discount(100, 100, 10000)).to eq 98
      end
    end

    context 'input_val <= 50, quantity > 100, year_to_date > 10000' do
      it 'returns 95' do
        expect(instance.discount(50, 200, 20000)).to eq 45
      end
    end

    context 'input_val > 50, quantity <= 100, year_to_date <= 10000' do
      it 'returns 98' do
        expect(instance.discount(100, 100, 10000)).to eq 98
      end
    end
  end
end
