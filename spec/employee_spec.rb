require './spec/spec_helper'

RSpec.describe Employee do

  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"}) }
  describe 'Iteration 1' do
		context '#initialize' do
	    it 'exists' do
        expect(bobbi).to be_a Employee
				
			end
    end
  end
end