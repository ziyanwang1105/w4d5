require 'byebug'
def my_uniq(arr)
    arr.uniq
end

class Array
    def two_sum # [-1, 0, 2, -2, 1]
        new_hash = Hash.new {|h, k| h[k] = []}
        result = []
        (0...self.length).each do |i|
            potential_y = 0 - self[i]
            if new_hash[potential_y].length > 0
                new_hash[potential_y].each do |idx|
                    result.unshift([idx, i])
                end
            else
                new_hash[self[i]] << i
            end
        end
        result
    end
end

def my_transpose(matrix)
    row = matrix.length
    col = matrix[0].length
    result = Array.new(col){Array.new(row)}
    (0...row).each do |i|
        (0...col).each do |j|
            result[j][i] = matrix[i][j]
        end
    end
    result
end

def stock_picker(arr)
    min = arr.min
    max = arr.max
    max_index = arr.rindex(max)
    min_index = arr.index(min)

    if max_index > min_index
        return [min_index, max_index]
    else
        left_min = arr[0..max_index].min
        right_max = arr[min_index..-1].max
        left_min_index = arr.index(left_min)
        right_max_index = arr.rindex(right_max)
        if max - left_min > right_max - min
            return [left_min_index, max_index]
        else
            return [min_index, right_max_index]
        end
    end
end

class Towers
    attr_reader :towers
    def initialize(num)
        @towers = Array.new(3) {[]}
        @towers[0] = (1..num).to_a.reverse
    end

    def [](pos)
        towers[pos]
    end

    def move(pos1, pos2)
        if !self[pos2 - 1].empty?
            raise 'Error.' if self[pos2 - 1].last < self[pos1 - 1].last
        end    
        self[pos2 - 1] << self[pos1 - 1].pop
    end
end