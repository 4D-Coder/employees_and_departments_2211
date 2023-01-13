require './spec/spec_helper'

RSpec.describe Department do

  let(:customer_service) { Department.new("Customer Service") }
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
  end
end