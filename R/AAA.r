.onAttach<-function(...){

Smess <- paste(
'Please note that rgdal, rgeos and maptools will be retired by the end of 2023.\nSubsequently, the next version of pgirmess (2.0.0) will be based on sf instead.\nFunctions dealing with rasters will be defunct and only others specific to pgirmess kept.\nFor the defunct functions, please consider sf/terra/stars using GDAL and PROJ.\nSee https://github.com/pgiraudoux/pgirmess' )

packageStartupMessage(Smess)

}