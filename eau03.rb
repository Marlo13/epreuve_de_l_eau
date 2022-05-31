#crée une liste Fibonacci

#pour crée la liste faut que les deux element d avant s additionne pour donner la suite

#faut que quand ARGV = a arr.length sa puts le dernier
=begin
def plus_que_un(arr)
    if arr[0].to_i < 0 || arr[0] == nil || !arr.all?(/\d/)
        puts "-1"
    else
        fibonacci_suit(arr)
    end
end
=end

def fibonacci_suit(arr)
    n = ARGV[0].to_i
    arr = [0, 1]
    a = 0
    b = 1

    while arr.length < n
        c = arr[a] + arr[b]
        arr << c
        
        b = b + 1
        a = a + 1
    end
    return arr.last
end

if ARGV[0].to_i < 0 || ARGV[0] == nil || !ARGV.all?(/\d/) # gestion d erreur
    puts "-1" 
    exit
end 

suite = ARGV #parsing

fino = fibonacci_suit(suite) #resolution

puts fino # affichage