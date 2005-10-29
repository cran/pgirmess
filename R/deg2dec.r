deg2dec<-function(coord){

# Giraudoux 28.12.2003
# converti des coordonn�es de degr� minutes en
# degr�s d�cimaux (1.60 = 2)

return(trunc(coord)+(coord-trunc(coord))/0.6)

}
