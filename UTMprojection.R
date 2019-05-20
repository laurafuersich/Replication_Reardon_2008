#----------------------------------------
#
# Define zones for UTM projection
# 05/10/19
#
#----------------------------------------


if(x=="Atlanta"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Baltimore"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=18 +datum=WGS84"))
}
if(x=="Boston"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=19 +datum=WGS84"))
}
if(x=="Chicago"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=16 +datum=WGS84"))
}
if(x=="Cincinnati"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=16 +datum=WGS84"))
}
if(x=="Cleveland"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Columbus"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Dallas"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=14 +datum=WGS84"))
}
if(x=="Denver"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=13 +datum=WGS84"))
}
if(x=="Detroit"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Edison"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=18 +datum=WGS84"))
}
if(x=="FtLauderdale"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Minneapolis"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=15 +datum=WGS84"))
}
if(x=="FtWorth"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=14 +datum=WGS84"))
}
if(x=="Houston"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=15 +datum=WGS84"))
}
if(x=="Kansas"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=15 +datum=WGS84"))
}
if(x=="LosAngeles"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=11 +datum=WGS84"))
}
if(x=="Miami"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="NewYork"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Newark"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=18 +datum=WGS84"))
}
if(x=="Oakland"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=10 +datum=WGS84"))
}
if(x=="Orlando"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Philadelphia"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=18 +datum=WGS84"))
}
if(x=="Phoenix"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=12 +datum=WGS84"))
}
if(x=="Pittsburgh"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Portland"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=10 +datum=WGS84"))
}
if(x=="Providence"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=19 +datum=WGS84"))
}
if(x=="Riverside"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=11 +datum=WGS84"))
}
if(x=="Sacramento"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=10 +datum=WGS84"))
}
if(x=="SanAntonio"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=14 +datum=WGS84"))
}
if(x=="SanDiego"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=11 +datum=WGS84"))
}
if(x=="SanFrancisco"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=10 +datum=WGS84"))
}
if(x=="SanJose"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=10 +datum=WGS84"))
}
if(x=="SantaAna"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=11 +datum=WGS84"))
}
if(x=="SantaBarbara"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=11 +datum=WGS84"))
}
if(x=="Seattle"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=10 +datum=WGS84"))
}
if(x=="StLouis"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=15 +datum=WGS84"))
}
if(x=="Tampa"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Warren"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=17 +datum=WGS84"))
}
if(x=="Washington"){
  shape_UTM<-spTransform(shape_metro, CRS("+proj=utm +zone=18 +datum=WGS84"))
}