=begin
Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau constitué uniquement de nombres. Nombres négatifs acceptés.


Exemples d’utilisation :
$> python exo.py 5 1 19 21
2


$> python exo.py 20 5 1 19 21
1

$> python exo.py -8 -6 4
2

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end
#faire moin entre chaque chiffre du tableau a-b b-c c-d ect

# methode
def soustraction(arr)
    a = 0
    b = 1
    a1 = []
    while a < arr.size-1        
        a2 = arr[a].to_i - arr[b].to_i
        
        a1 << a2.abs
        
        b +=1
        
        if b == arr.size
            a += 1
            b = a + 1
        elsif arr[b] == nil
            a = arr.size-1
        end

    end
    arr = a1
    min_absolu(arr)
end


def min_absolu(arr)
    a = 0
    b = 1
    while a < arr.size-1
        if arr[a] < arr[b]
            arr.delete_at(b)
            a = 0
            b = 1
        elsif arr[a] > arr[b]
            arr.delete_at(a)
            a = 0
            b = 1
        elsif arr[a] == arr[b]
            arr.delete_at(b)
        end
        a += 1
        b += 1

    end
    a = 0
    b = 1
    if arr[a] < arr[b]
        arr.delete_at(b)
    elsif arr[a] > arr[b]
        arr.delete_at(a)
    end
    puts arr
end

#gestin d erreur
(puts "error" ; exit) if ARGV[0] == nil

a = 0
while a < ARGV.size
(puts "error" ; exit) if !/\d/.match(ARGV[a])
a+=1 end

#parsing
arr = ARGV

#resolution
result = soustraction(arr)

#affichage
result