require 'project'

describe '#my_uniq' do

    context ' the function removes duplicates from an array' do

        it 'it returns the unique elements in the order in which they first appeared' do
            expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
        end
    end
end
