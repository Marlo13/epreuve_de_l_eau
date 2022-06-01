=begin
Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant. Min inclus, max exclus.


Exemples d’utilisation :
$> python exo.py 20 25
20 21 22 23 24


$> python exo.py 25 20
20 21 22 23 24

$> python exo.py hello
error

Afficher error et quitter le programme en cas de problèmes d’arguments.    
=end

def affiche_la_suite(arr)
    a1 = []
    a = arr[0].to_i-1
    while a.to_i < arr[1].to_i
        a += 1 
        a1 << a
    end

    return  a1
end

#gestion d erreur
(puts "error" ; exit) if ARGV[0] == nil
#parsing
nombres = ARGV
#resolution
lit = affiche_la_suite(nombres)
#affichage
p lit