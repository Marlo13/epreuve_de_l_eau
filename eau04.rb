#nombre premier divisible que par lui meme et 1

def plus_que_un(arr)
    if arr[0].to_i < 0
        puts "-1"
    elsif arr[0] == nil
        puts "-1" 
    elsif !arr.all?(/\d/) #gere les string
        puts "-1"
    else
        number_first(arr)
    end
end


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
    puts arr.last
end

plus_que_un(ARGV)