WELSH = Hash.new
#exemple de hash de data (variable) pour un repas :
WELSH['Lipides'] = 38 # 38.4,
WELSH['Glucides'] = 18 # 18.3, 
WELSH['Protéines'] = 36 #36.3

# Voici le hash utile pour les calculs
CALORIES = Hash.new
CALORIES['Lipides'] = 9,
CALORIES['Glucides'] = 4,
CALORIES['Protéines'] = 4



def weight_watcher(my_h)

    #my_h.map {|k,v| v * CALORIES[k] if CALORIES.key? k  }
    return my_h.map {|k,v| v * CALORIES[my_h.key] if CALORIES.key? my_h.key  }
end

weight_watcher(WELSH)