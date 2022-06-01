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


def one_letteroftwo(str)
    a = 0
    n = 0
    lettre = ''
    while a < (str.size)
        
        (n += 1) if str[a] == " "


        lettre +=   if n % 2 == 0
                        if a % 2 == 0
                            str[a].upcase
                        else
                            str[a].downcase
                        end
                    else
                        if a % 2 == 0
                            str[a].downcase
                        else
                            str[a].upcase
                        end
                    end
        
        a += 1
    end
   return lettre
end

#gestion d erreur
(puts "error" ; exit) if ARGV[0] == nil
(puts "error" ; exit) if /\d/.match(ARGV[0])
#parsing
chaine = ARGV[0]
#resolution
result = one_letteroftwo(chaine)
#affichage
puts result