class Department
	attr_reader :name,
							:employees,
              :expenses
	
	def initialize(name)
		@name = name
		@employees = []
    @expenses = 0
	end

  def hire(employee)
    @employees.push(employee)
  end
  
  def expense(amount)
    @expenses += amount
  end

  def employee_raise(employee, amount)
    employee.give_raise(amount)
    expense(amount)
  end
end