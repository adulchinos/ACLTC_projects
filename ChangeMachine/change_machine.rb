require 'rspec'

class ChangeMachine

  def give_change(money)
    change_array = []
    if money == 1
      change_array << 1
    elsif money == 4
      change_array = [1, 1, 1, 1]
    elsif money == 5
      change_array << 5
    elsif money == 10
      change_array << 10
    elsif money == 11 || 12 || 13 || 14 
      change_array << 10 
      (money.to_i-10).times do
        change_array << 1   
        end
    elsif money == 15
      change_array = [10, 5]
    end
    return change_array 
  end
end

machine = ChangeMachine.new
puts "Insert your money and the machine will give you change"
money = gets.chomp.to_i
puts
puts "Here's your change:"
puts machine.give_change(money)

RSpec.describe ChangeMachine do
  describe 'give_change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.give_change(1)).to eq([1])
    end

    it 'should return [1, 1, 1, 1] when given 4' do
      machine = ChangeMachine.new
      expect(machine.give_change(4)).to eq([1, 1, 1, 1])
    end

    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.give_change(5)).to eq([5])
    end

    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.give_change(10)).to eq([10])
    end

    it 'should return [10 + 1\'s] when given 11 - 14' do
      machine = ChangeMachine.new
      expect(machine.give_change(14)).to eq([10, 1, 1, 1, 1])
    end

    it 'should return [10, 5] when given 15' do
          machine = ChangeMachine.new
          expect(machine.give_change(15)).to eq([10, 5])
        end

  end
end