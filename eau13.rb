=begin
Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri par sélection.

Vous utiliserez une fonction de cette forme (selon votre langage) :
my_select_sort(array) {
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


procédure tri_selection(tableau t)
      n ← longueur(t) 
      pour i de 0 à n - 2
          min ← i       
          pour j de i + 1 à n - 1
              si t[j] < t[min], alors min ← j
          fin pour
          si min ≠ i, alors échanger t[i] et t[min]
      fin pour
fin procédure
=end


def my_select_sort(array)

    n = array.size
    
    for i in 0..n-2
        min = i
        for j in i+1..n-1
           (min = j) if array[j] < array[min]
            (array[i], array[min] = array[min], array[i]) if min != i
        end
    end
    
    array.join(' ')
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
result = my_select_sort(number)
#affichage
puts result