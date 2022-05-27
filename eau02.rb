#recupere les argument avec ARGF
#les renvoyer a l envers

=begin
def enver_a_l(arr)
    
    a1 = []
    a1 = arr.reverse
    puts a1
end
enver_a_l(ARGV)
=end
=begin
def enver(arr)
   n = arr.length
        while n != -1
        a1 = arr.rotate(n)
            n = n -1
        end

   
end
=end


def reversee(arr)
    a = 0
    z = arr.length - 1
    
    while a < z
    
    arr[a], arr[z] = arr[z], arr[a]
  
    a = a + 1
    z = z - 1
    end

puts arr

end

reversee(ARGV)