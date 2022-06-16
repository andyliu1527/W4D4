require_relative '../lib/tdd.rb'

describe Array do
    subject(:array) {Array.new([1, 2, 1, 3, 3])}

    describe '#my_uniq' do
        it 'returns an array with uniq elements' do
            expect(array.my_uniq).to eq ([1,2,3])
        end
    end

    describe '#two_sum' do
        it 'returns pairs of indices that sum to 0' do
            array1 = Array.new([-1, 0, 2, -2, 1])
            expect(array1.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe '#my_transpose' do
        it 'returns a transposed array' do
            rows = [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ]
            cols = [
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
            ]

            expect(rows.my_transpose).to eq(cols)
        end
    end

    describe '#stock_picker' do
        it 'returns the days with highest profit' do
            array2 = [3,4,10,1,5,9]
            expect(array2.stock_picker).to eq([3,5])
        end
    end

end

