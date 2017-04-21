require 'spec_helper'
describe IntroduceExplainingVariable do
  describe '#price' do
    it 'returns 4100.0' do
      instance = IntroduceExplainingVariable.new(2, 2000)
      expect(instance.price).to eq 4100.0
    end
  end
end
