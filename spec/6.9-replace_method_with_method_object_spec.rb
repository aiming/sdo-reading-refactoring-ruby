require 'spec_helper'

describe Account do
  instance = Account.new

  describe '#gamma' do
    let(:input_val) { 1 }
    let(:quantity)  { 2 }
    let(:result)    { instance.gamma(input_val, quantity, year_to_date)}

    context 'year_to_date - important_value1 <= 100' do
      let(:year_to_date) { 112 }
      it 'returns 1460' do
        expect(result).to eq 1460
      end
    end

    context 'year_to_date - important_value1 > 100' do
      let(:year_to_date) { 113 }
      it 'returns 1327' do
        expect(result).to eq 1327
      end
    end
  end
end
