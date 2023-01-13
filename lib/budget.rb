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
        if !employee_salaries.keys.include?(department)
          employee_salaries[department] = { employee.name => employee.salary }
        else
          employee_salaries[department][employee.name] = employee.salary
        end
      end
    end
    
    employee_salaries
  end
end