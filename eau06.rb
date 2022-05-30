=begin
Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères. Seule les lettres (A-Z, a-z) sont prises en compte.


Exemples d’utilisation :
$> python exo.py “Hello world !”
HeLlO wOrLd !


$> python exo.py 42
error

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end
#.upcase toutes les lettres paires

def one_letteroftwo(arr)
    n = 0
    
    while n < arr.length
        
        arr[n].chars{        
        if n.even?
            puts "lol"
            arr[n].to_s.upcase
        else
            puts "mdr"
            arr[n].to_s.downcase
        end}
    n = n + 1
    end
    
    print arr
end
one_letteroftwo(ARGV)