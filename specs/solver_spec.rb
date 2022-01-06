require_relative '../solver'

describe Solver do
  before(:each) do
    @i_solver = Solver.new
  end
  context 'Instantiate solver' do
    it '#new' do
      solver = Solver.new
      expect(solver).to be_a Solver
    end
  end

  context 'Test factorial function' do
    it 'Factorial function receives a positive integer' do
      expect(@i_solver.factorial(5)).to eq(120)
    end
    it 'Factorial fucntion receives zero' do
      expect(@i_solver.factorial(0)).to eq(1)
    end
    it 'Factorial fucntion receives a negative number' do
      expect { @i_solver.factorial(-1) }.to raise_error('Error, only integers bigger than 0 are permitted')
    end
  end

  context 'Test Reverse Function' do
    it 'Test for non empty string' do
      expect(@i_solver.reverse('Hello')).to eq('olleH')
    end
    it 'Test for empty string' do
      expect(@i_solver.reverse('')).to eq('')
    end
  end

  context 'Test FizzBuzz Function' do
    it 'Test for numbers only divisible by 3' do
      expect(@i_solver.fizzbuzz(9)).to eq('fizz')
      expect(@i_solver.fizzbuzz(96)).to eq('fizz')
    end

    it 'Test for numbers only divisible by 5' do
      expect(@i_solver.fizzbuzz(5)).to eq('buzz')
      expect(@i_solver.fizzbuzz(50)).to eq('buzz')
    end

    it 'Test for numbers that are divisible by both 3 and 5' do
      expect(@i_solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(@i_solver.fizzbuzz(60)).to eq('fizzbuzz')
    end

    it 'Test for numbers that are not divisible by either 3 or 5' do
      expect(@i_solver.fizzbuzz(7)).to eq('7')
      expect(@i_solver.fizzbuzz(14)).to eq('14')
    end
  end
end
