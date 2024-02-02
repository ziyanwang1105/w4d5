require 'project'

describe '#my_uniq' do

    context ' the function removes duplicates from an array' do

        it 'it returns the unique elements in the order in which they first appeared' do
            expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
        end
    end
end

describe 'Array#two_sum' do
    context 'finds all pairs of positions where the elements at those positions sum to zero' do
        it 'should return the index pair of the elements' do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end
end

describe '#my_transpose' do

    context 'convert between the row-oriented and column-oriented representations' do
        it 'should return the transpose matrix' do

            expect(my_transpose([
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
              ])).to eq([[0, 3, 6], [1, 4, 7],[2, 5, 8]])
        end
    end
end

describe '#stock_picker' do
    context 'takes an array of stock prices, and outputs the most profitable pair of days' do

        it 'when min is on the left of max' do
            expect(stock_picker([10, 20, 30])).to eq([0,2])
            expect(stock_picker([10, 40, 30])).to eq([0,1])
        end

        it 'when min is on the right of max' do
            expect(stock_picker([90, 1000, 10, 20])).to eq([0,1])
            expect(stock_picker([999, 1000, 10, 20])).to eq([2,3])
        end

    end
end
