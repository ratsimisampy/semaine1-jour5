Welsh = Hash.new
Menu = Hash.new
Frites = Hash.new
Biere = Hash.new 
CALORIES = Hash.new
#exemple de hash de data (variable) pour un repas :
Welsh['Lipides'] = 38.4 #38.4,
Welsh['Glucides'] = 18.3 # 18.3, 
Welsh['Protéines'] = 36.3 #36.3

Frites['Lipides'] = 15
Frites['Glucides'] = 41
Frites['Protéines'] = 3.4

Biere['Lipides'] = 0
Biere['Glucides'] = 25
Biere['Protéines'] = 4

# Je construis mon Menu
Menu[Welsh] = Welsh 
Menu[Frites] = Frites
Menu[Biere] = Biere 
p Menu
# Voici le hash utile pour les calculs
CALORIES['Lipides'] = 9
CALORIES['Glucides'] = 4
CALORIES['Protéines'] = 4



def weight_watcher(my_h)
	result_sum = 0 
	multiply = my_h.map {|k,v| (v * CALORIES[k]).round(2)   }
	multiply.each { |i| result_sum += i }
	return result_sum
end

p  weight_watcher(Welsh)

def menu_weight_watcher(menu)
	
end