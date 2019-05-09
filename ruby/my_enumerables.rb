class Array

    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
        end

        self
    end


    # def my_each(&prc)
    #     self.length.times do |i|
    #     prc.call(self[i])
    #     end
    
    #     self
    # end

    def my_select(&prc)
        selects = []

        self.my_each {|item| selected << item if prc.call(item)}

        selects
    end

    def my_select(&prc)
        selects = []

        self.my_each do |item|
        selects << item if prc.call(item)
        end

        selects
    end

    def my_flatten
      flattened = []

      self.each do |ele|
        if ele.instance_of?(Array)
            flattened.concat(ele.my_flatten)
        else
            flattened << ele
        end
      end 

      flattened
    end

   def factors(num)
      num % 
   end


end