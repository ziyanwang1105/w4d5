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