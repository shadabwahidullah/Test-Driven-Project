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
end