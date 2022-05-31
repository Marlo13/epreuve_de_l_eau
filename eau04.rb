#nombre premier divisible que par lui meme et 1

def number_first(arr)
    n = ARGV[0].to_i
    arr = []
    a = 0
    b = 0
    
    while b == 0 # trouver une condition qui s arrete apres etre superieur de 1 fois        
        
        count=0

        
        for i in 1..a+1 do
             d=a%i
            if d==0 then
                count+=1
            end
        end
        if count==2 then
            arr << a
        else
        end

        if arr.last.to_i > n 
            b = b + 1
        else
        end

        a = a+1
    end
   return arr.last
end
if ARGV[0].to_i < 0 || ARGV[0] == nil || !ARGV.all?(/\d/) # gestion d erreur
    puts "-1"
    exit
end

number = ARGV #parsing

plus = number_first(number)

puts plus