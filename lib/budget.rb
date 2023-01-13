class Budget
	attr_reader :year,
              :departments
	
	def initialize(year)
		@year = year
    @departments = []
    @employee_salaries = {}
	end

  def add_department(department)
    @departments.push(department)
  end

  def lowest_expenses
    @departments.find_all do |department|
      department.expenses < 500
    end
  end

  def employee_salaries
    employee_salaries = Hash.new { |dpt, key| dpt[key] = [] }
    @departments.each do |department|
      department.employees.each do |employee|
        employee_salaries[department] = {name: employee.name, salary: employee.salary} 
      end
    end
    
    employee_salaries
  end
end