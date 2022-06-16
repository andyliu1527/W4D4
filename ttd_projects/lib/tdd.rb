class Array

    def my_uniq
        result = []
        self.each do |ele|
            if !result.include?(ele)
                result << ele
            end
        end
        result
    end

    def two_sum
        result = []
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
                if idx2 > idx1 && ele1 + ele2 == 0
                    result << [idx1, idx2]
                end
            end
        end
        result
    end

    def my_transpose
        arr = Array.new(self.length){Array.new(self.length)}
        (0...self.length).each do |i|
            (0...self.length).each do |j|
                arr[i][j] = self[j][i]
            end
        end
        arr
    end

    def stock_picker
        result = []
        profit = 0
        self.each_with_index do |day1, idx1|
            self.each_with_index do |day2, idx2|
                if idx2 > idx1 && day2 - day1 > profit
                    profit = day2 - day1
                    result = [idx1, idx2]
                end
            end
        end
        result
    end

    

end