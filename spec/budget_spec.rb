require './spec/spec_helper'

RSpec.describe Budget do
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }
  let(:echo) { Employee.new({name: "Echo Farris", age: "31", salary: "120000"}) }
  let(:dimitri) { Employee.new({name: "Dimitri Rimor", age: "20", salary: "85000"}) }

  let(:department_1) { Department.new("Customer Service") }
  let(:department_2) { Department.new("Human Resources") }

  let(:budget) { Budget.new('2023') }

  describe 'Iteration 3' do
		context '#initialize' do
	    it 'exists' do
        expect(budget).to be_a Budget
        expect(budget).to be_a Budget
			end
      
      it 'has readable attributes' do
        expect(budget.year).to eq('2023')
        expect(budget.departments).to eq([])
			end
    end
    
    context '#add_department' do
	    it 'can list all of its departments' do
        expect(budget.departments).to eq([])

        budget.add_department(department_1)
        budget.add_department(department_2)
				

        expect(budget.departments).to eq([department_1, department_2])
			end
    end

    
    context '#lowest_expenses' do
	    it 'can list all departments with expenses less than $500' do
        department_1.hire(bobbi)
        department_1.hire(dimitri)

        department_1.employees[0].give_raise(250)
        department_1.employees[1].give_raise(250)


        expect(budget.department_2.expenses).to eq(0)
        expect(budget.lowest_expenses).to eq(department_2)
      end
    end
  end
end