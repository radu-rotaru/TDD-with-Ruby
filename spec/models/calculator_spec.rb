# 3 Allow the Add method to handle new lines between numbers (instead of commas).

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

    [["1,2,3", 6], ["10,40,74", 124], ["1,2", 3]].each do |str, res|
      it "Checks that we can add more than two numbers when string is valid" do
        calculator = Calculator.new()
        result = calculator.add(str) 
        expect(result).to eq(res)
      end
    end

    [["1\\n2,3", 6], ["10\\n90,10\\n20", 130]].each do |str, res|
      it "Checks that we can have \\n as a delimiter" do
        calculator = Calculator.new()
        result = calculator.add(str) 
        expect(result).to eq(res)
      end
    end

  end
end
