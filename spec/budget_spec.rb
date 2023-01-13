require './spec/spec_helper'

RSpec.describe Budget do
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
end