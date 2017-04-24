require 'spec_helper'
describe Friend do
  describe '#found_friends' do
    it 'Friends is only John' do
      friend = Friend.new
      result = friend.found_friends(["John"])

      expect(result).to match_array(["John"])
    end

    it 'Friends are Don and John and Kent' do
      friend = Friend.new
      result = friend.found_friends(["Don", "John", "Kent"])

      expect(result).to match_array(["Don", "John", "Kent"])
    end

    it 'Mary is not friend' do
      friend = Friend.new
      result = friend.found_friends(["Don", "Mary"])

      expect(result).not_to contain_exactly("Mary")
    end
  end

    describe '#found_friends2' do
    it 'Friends is only John' do
      friend = Friend.new
      result = friend.found_friends2(["John"])

      expect(result).to match_array(["John"])
    end

    it 'Friends are Don and John and Kent' do
      friend = Friend.new
      result = friend.found_friends2(["Don", "John", "Kent"])

      expect(result).to match_array(["Don", "John", "Kent"])
    end

    it 'Mary is not friend' do
      friend = Friend.new
      result = friend.found_friends2(["Don", "Mary"])

      expect(result).not_to contain_exactly("Mary")
    end
  end
end
