# TDD.rb
class Array
    def remove_dups
        hash = Hash.new(0)
        self.each {|ele| hash[ele] += 1}
        hash.keys
    end

    def two_sum
        arr = []
        (0...self.length - 1).each do |i|
            ((i + 1)...self.length).each {|j| arr << [i, j] if self[i] + self[j] == 0}
        end
        arr 
    end
end

# n = Array.new([1, 2, 1, 3, 3])
# p n.remove_dups
