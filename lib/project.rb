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