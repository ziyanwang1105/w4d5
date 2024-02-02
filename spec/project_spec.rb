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

describe Towers do
    subject(:tower) {Towers.new(4)}
    describe '#initialize' do
        context 'initialize with number argument' do
            it 'should not raise an error when given a number' do
                expect{tower}.to_not raise_error
            end

            it 'should generate the tower array' do
                expect(tower[0]).to eq([4, 3, 2, 1])
            end

            it 'should have 2 empty arrays' do
                expect(tower[2]).to eq([])
                expect(tower[1]).to eq([])
            end
        end
    end

    describe '#[](pos)' do
        context 'should return array of tower at given index' do
            it 'should return array of tower at given index' do
                expect(tower[0]).to eq([4, 3, 2, 1])
            end
        end
    end

    describe '#move' do
        before(:each) do
            tower.move(1, 2)
        end
        context 'ask player to move disc' do
            it 'should move the top disc to the second tower' do
                expect(tower[0]).to eq([4, 3, 2])
                expect(tower[1]).to eq([1])
            end

            it 'should raise error and not move disc if the disc in destination is smaller than the moving disc' do
                expect{tower.move(1, 2)}.to raise_error
            end
        end
    end

    describe '#won?' do
        let(:small_tower) {Towers.new(2)}
        before(:each) do
            small_tower.move(1,2)
            small_tower.move(1,3)
            small_tower.move(2,3)
        end

        context 'end tower should have the discs in the correct order' do
            it 'should return true when the game is over' do
                expect(small_tower.won?).to be true
            end

            it 'should return false when the game is not over' do
                expect(tower.won?).to be false
            end
        end
    end
end
