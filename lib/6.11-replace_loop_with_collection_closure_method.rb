class ReplaceLoopWithCollectionClosureMethod
  class Company
    attr_reader :employees
    def initialize(employee_list)
      @employees = employee_list.map{|row|Employee.new(position: row[:position], office: row[:office], salary: row[:salary])}
    end

    def select_managers
      managers = []
      employees.each do |e|
        managers << e if e.manager?
      end
      return managers
    end

    def employees_offices
      offices = []
      employees.each {|e| offices << e.office}
      return offices
    end

    def manager_offices
      offices = []
      employees.each do |e|
        offices << e.office if e.manager?
      end
      return offices
    end

    def total_salary
      total = 0
      employees.each{|e| total += e.salary}
      return total
    end
  end

  class Employee
    attr_accessor :position, :office, :salary
    def initialize(arg={})
      self.position = arg[:position]
      self.office = arg[:office]
      self.salary = arg[:salary]
    end

    def manager?
      position == 255
    end
  end
end
