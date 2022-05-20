

def menu 
    puts '1. Convertir des radians en degrés.'
    puts '2. Convertir des degrés en radians.'
    puts '3. Convertir des kilomètres par heure en mètres par seconde.'
    puts '4. Convertir des mètres par seconde en kilomètres par heure.'
    puts '5. Quitter.'
    choice = 0
    while choice < 1 or choice > 5
      print "\nVotre choix : "
      choice = gets.chomp.to_i
    end
    return choice
  end
  
  PI = 3.14159265359
  DEG_TO_RAD = 180 / PI
  MS_TO_KMH = 3.6
  choice = menu
  if choice != 5
    print "\nEntrez le number : "
    number = gets.chomp.to_f
    if choice == 1
      print number * DEG_TO_RAD
    elsif choice == 2
      print number / DEG_TO_RAD
    elsif choice == 3
      print number / MS_TO_KMH
    else
      print number * MS_TO_KMH
    end
  end