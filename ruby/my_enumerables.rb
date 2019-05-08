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

    
end