require 'spec_helper'
describe ReplaceLoopWithCollectionClosureMethod do

  let(:complany_employees) {
    ReplaceLoopWithCollectionClosureMethod::Company.new(
      [
        {
          position: 1,
          office: "大阪",
          salary: 100
        },
        {
          position: 1,
          office: "大阪",
          salary: 1000
        },
        {
          position: 255,
          office: "東京",
          salary: 10000
        }
      ]
    )

  }

  describe '#select_managers' do
    it 'returns only manager employee' do
      expected = ReplaceLoopWithCollectionClosureMethod::Employee.new(position: 255, office: "東京", salary: 10000)
      expect(complany_employees.select_managers.count).to eq 1
      expect(complany_employees.select_managers.first.position).to eq expected.position
      expect(complany_employees.select_managers.first.office).to eq expected.office
      expect(complany_employees.select_managers.first.salary).to eq expected.salary
    end
  end

  describe '#employees_offices' do
    it 'returns contain 大坂 and 東京' do
      expect(complany_employees.employees_offices).to eq(["大阪","大阪","東京"])
    end
  end

  describe '#manager_offices' do
    it 'returns contain 東京' do
      expect(complany_employees.manager_offices).to eq(["東京"])
    end
  end

  describe '#total_salary' do
    it 'returns is 11100' do
      expect(complany_employees.total_salary).to eq(11100)
    end
  end
end
