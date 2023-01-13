require './spec/spec_helper'

RSpec.describe Department do

  let(:department) { Department.new("Customer Service") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }


  describe 'Iteration 2' do
		context '#initialize' do
	    it 'exists' do
        expect(department).to be_a Department
			end

      it 'has attributes' do
        expect(department.name).to eq("Customer Service")
        expect(department.employees).to eq([])
			end
    end

    context '#hire' do
	    it 'can hire employees' do
        department.hire(bobbi)
        department.hire(aaron)
				
        expect(department.employees).to eq([bobbi, aaron])
			end
    end
  end
end