
readGDALbbox<-function(gdal,spo,...){
	require(rgdal)
	mybb<-bbox(spo)
	x<-GDALinfo(gdal)
	
	myx<-seq(x[[4]],x[[4]]+x[[1]]*x[[6]],by=x[[6]])
	myy<-seq(x[[5]]+x[[1]]*x[[7]],x[[5]],by=-x[[7]])

	xcol<-which(myx>=mybb[1,1] & myx<=mybb[1,2])
	ycol<-which(myy>=mybb[2,1] & myy<=mybb[2,2])

  readGDAL(gdal,offset=c(min(ycol),min(xcol)),region.dim=c(length(ycol),length(xcol)),...)

}
