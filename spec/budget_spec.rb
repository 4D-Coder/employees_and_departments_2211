require './spec/spec_helper'

RSpec.describe Budget do
  let(:budget) { Budget.new('2023') }

  describe 'Iteration 3' do
		context '#initialize' do
	    it 'exists' do
        expect(budget).to be_a Budget
        expect(budget).to be_a Budget
			end
      
      it 'has readable attributes' do
        expect(budget.year).to eq('2023')
			end
    end
  end
end