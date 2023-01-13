class Budget
	attr_reader :year,
              :departments
	
	def initialize(year)
		@year = year
    @departments = []
	end

  def add_department(department)
    @departments.push(department)
  end

  def lowest_expenses
    @departments.find_all do |department|
      department.expenses < 500
    end
  end
end