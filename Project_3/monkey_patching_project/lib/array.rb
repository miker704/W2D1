# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
#   part 1
    def span
    return nil if self.empty?
    # max_Num = self.max
    # min_Num = self.min
    # return max_Num - min_Num 
    return self.max-self.min
    end

    def median
     return nil if self.empty?
     temp=self.sort
     mid=((temp.length-1)/2)
     return temp[mid] if temp.length.odd?
     return ((temp[mid]+temp[mid+1])/2.0)
    end

    def average
     return nil if self.empty?
      return (self.sum)/(self.length*1.0)
    end

    def counts
        hash=Hash.new(0)
        self.each{|ele|hash[ele]+=1}
        return hash
    end

# part 2

    def my_count(val)
        hash=self.counts
        return hash[val]
    end

    def my_index(val)
        return nil if !self.include?(val)
        self.each.with_index do |ele,i| 
            if ele==val
                return i
            end
        end
    end

    def my_uniq
        hash=self.counts
        return hash.keys
    end

    def my_transpose
        
        sub_Len = self.first.length
        return (0...sub_Len).map do |i|
            self.map{|ele| ele[i]}
        end

    end




end
