class Multiset
   @@array
   @@length
   def initialize(n)
	@@array = Array.new
	@@array[0] = n
        @@length = 1
   end

   def contains(n)
	@@array.each do |t|
	    if t == n
		return true
            end
        end
	return false
   end
   
   def add(n)
	@@array[@@length] = n
	@@length = @@length + 1
   end

   def remove(n)
	for i in 0..(@@length-1)
	    if @@array[i] == n
		for j in i..(@@length-1)
			@@array[j]=@@array[j+1]
		end
		@@length = @@length - 1
		return 
	    end
	end	
   end
end
