require './spec/spec_helper'

RSpec.describe Budget do
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }
  let(:echo) { Employee.new({name: "Echo Farris", age: "31", salary: "120000"}) }
  let(:dimitri) { Employee.new({name: "Dimitri Rimor", age: "20", salary: "85000"}) }

  let(:department_1) { Department.new("Customer Service") }
  let(:department_2) { Department.new("Human Resources") }
  let(:department_3) { Department.new("Information Technology") }

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
        budget.add_department(department_1)
        budget.add_department(department_2)
        budget.add_department(department_3)

        department_1.hire(bobbi)
        department_2.hire(dimitri)
        department_3.hire(echo)

        department_1.employee_raise(bobbi, 499)
        department_2.employee_raise(dimitri, 500)
        department_3.employee_raise(echo, 450)

        expect(budget.lowest_expenses).to eq([department_1, department_3])
      end
    end

    context '#employee_salaries' do
	    it "can list all employees' salaries" do
        budget.add_department(department_1)
        budget.add_department(department_2)
        budget.add_department(department_3)

        department_1.hire(bobbi)
        department_2.hire(dimitri)
        department_3.hire(echo)

        expected_hash = {
          department_1 => {:name => "Bobbi Jaeger", :salary => 100000},
          department_2 => {:name => "Dimitri Rimor", :salary => 85000},
          department_3 => {:name => "Echo Farris", :salary => 120000}
        }

        expect(budget.employee_salaries).to eq(expected_hash)
			end
    end
  end
end