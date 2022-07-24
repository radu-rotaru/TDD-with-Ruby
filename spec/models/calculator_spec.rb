# 1 Create a simple String calculator with a method signature:
# 
# int Add(string numbers)
# 
# The method can take up to two numbers, separated by commas, and will return their sum. 
# for example “” or “1” or “1,2” as inputs.
# (for an empty string it will return 0) 

require 'rails_helper'
require_relative 'calculator'

RSpec.describe Calculator, type: :model do
  context "Tests" do
    [["", 0], ["1", 1], ["1,2", 3]].each do |str, res|
      it "Checks that we can add up to two numbers when string is valid" do
        calculator = Calculator.new()
        result = calculator.add(str) 
        expect(result).to eq(res)
      end
    end
  end
end
