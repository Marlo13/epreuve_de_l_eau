=begin
Créez un programme qui trie les éléments donnés en argument par ordre ASCII.


Exemples d’utilisation :
$> python exo.py Alfred Momo Gilbert
Alfred Gilbert Momo


$> python exo.py A Z E R T Y
A E R T Y Z

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end
=begin
def convert_toascii(arr)
    a = 0
    a1 = []
    while a < arr.size
        
        a1 <<arr[a].ord
        a +=1
    end
    puts a1
    #convert_to_s(a1)
end

def convert_to_s(arr)
    a = 0
    a1 = []
    
    while a < arr.size
        a1 << arr[a].chr
    end
    puts a1
end


def ascii_tri(arr)
    a = 0
    n = arr.size
    while a < arr.size
       puts arr.ord
    for i in 0..n-1
            puts arr[i], arr[i+1], "..."
            if arr[i].to_i > arr[i+1].to_i
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
            end
    end
    a += 1
end
   puts arr #.chr reforme le ascii en string
=end

def tri_ascii(arr)#method
   n = arr.size 
    
    for i in 0..n-2
        i = i.ord
        if  arr[i] > arr[i+1]
            temp = arr[i]
            arr[i] = arr[i+1]
            arr[i+1] = temp
        end
    end
  return arr.join(' ')
end


#gestion d erreur 
(puts "error" ; exit) if ARGV[0] == nil
#parsing
str = ARGV
#resolution
result = tri_ascii(str)
#affichage
puts result