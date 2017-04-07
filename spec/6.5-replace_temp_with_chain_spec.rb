require 'spec_helper'

describe ReplaceTempWithChain do
  describe '#add_options_to_select' do
    it 'returns [1999, 2000, 2001, 2002]' do
      instance = ReplaceTempWithChain.new

      expect(instance.add_options_to_select).to eq [1999, 2000, 2001, 2002]
    end
  end
end
