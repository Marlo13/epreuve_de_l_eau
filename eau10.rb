=begin
Créez un programme qui affiche le premier index d’un élément recherché dans un tableau. Le tableau est constitué de tous les arguments sauf le dernier. 
L’élément recherché est le dernier argument. Afficher -1 si l’élément n’est pas trouvé.

Exemples d’utilisation :
$> python exo.py Ceci est le monde qui contient Charlie un homme sympa Charlie
6

$> python exo.py test test test
0

$> python exo.py test boom
-1

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end
def first_index(arr)
    last = arr.last
    a = 0
    while a < arr.size-1
        (return a ; exit) if last == arr[a]
        a += 1
    end
    return "-1"
end


#gestin d errreur
(puts "error" ; exit) if ARGV[0] == nil
#parsing
word = ARGV
#resolution
index = first_index(word)
#affichage
puts index