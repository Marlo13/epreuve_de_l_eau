=begin
Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.


Exemples d’utilisation :
$> python exo.py “4445353”
true


$> python exo.py 42
true

$> python exo.py “Bonjour 36”
false

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end

def numeric?(arr)
    a = 0
    while a < arr.size
        p arr[a]
        if arr[a].match(/\w/)
            puts "false"
            exit
        else
        end
        a += 1 
    end
    return true
end

#gestion d erreur
(puts "error" ; exit) if ARGV[0] == nil
#parsing
table = ARGV
#resolution
result = numeric?(table)
#affichage
puts result
