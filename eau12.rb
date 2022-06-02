=begin
Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri à bulle.

Vous utiliserez une fonction de cette forme (selon votre langage) :
my_bubble_sort(array) {
	# votre algorithme
	return (new_array)
}


Exemples d’utilisation :
$> python exo.py 6 5 4 3 2 1
1 2 3 4 5 6


$> python exo.py test test test
error

Afficher error et quitter le programme en cas de problèmes d’arguments.


Wikipedia vous présentera une belle description de cet algorithme de tri.
=end

def my_bubble_sort(list)
    swapped = true
    while swapped do
      swapped = false
      0.upto(list.size-2) do |i|
        if list[i] > list[i+1]
          list[i], list[i+1] = list[i+1], list[i] # swap les valeurs
          swapped = true
        end
      end
    end
    return list
end


#gestion d erreur
(puts "error" ; exit) if ARGV[0] == nil

a = 0
while a < ARGV.size
(puts "error" ; exit) if !/\d/.match(ARGV[a])
a+=1 end

#parsing
number = ARGV
#resolution
result = my_bubble_sort(number)
#affichage
print number