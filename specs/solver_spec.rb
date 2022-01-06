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
            expect(@i_solver.factorial(5)).to eq (120)
        end
        it 'Factorial fucntion receives zero' do
            expect(@i_solver.factorial(0)).to eq (1)
        end
        it 'Factorial fucntion receives a negative number' do
            expect(@i_solver.factorial(-1)).to raise_error
        end
    end

    context 'Test Reverse Function' do
        it 'Test for non empty string' do
            expect(@i_solver.reverse("Hello")).to be 'olleH'
        end
        it 'Test for empty string' do
            expect(@i_solver.reverse("")).to be ''
        end
    end

    context 'Test FizzBuzz Function' do 
        it 'Test for numbers only divisible by 3' do
            expect(@i_solver.fizzbuzz(9)).to be 'fizz'
            expect(@i_solver.fizzbuzz(96)).to be 'fizz'
        end

        it 'Test for numbers only divisible by 5' do
            expect(@i_solver.fizzbuzz(5)).to be 'buzz'
            expect(@i_solver.fizzbuzz(50)).to be 'buzz'
        end

        it 'Test for numbers that are divisible by both 3 and 5' do
            expect(@i_solver.fizzbuzz(15)).to be 'fizzbuzz'
            expect(@i_solver.fizzbuzz(60)).to be 'fizzbuzz'
        end

        it 'Test for numbers that are not divisible by either 3 or 5' do
            expect(@i_solver.fizzbuzz(7)).to be '7'
            expect(@i_solver.fizzbuzz(14)).to be '14'
        end

    end
end