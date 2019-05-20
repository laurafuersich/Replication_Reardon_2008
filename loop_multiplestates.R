#----------------------------------------
#
# Load data and calculate H
# for metropolitain areas in multiple states
# 05/10/19
#
#----------------------------------------

metrolist<-c("Cincinnati", "Kansas", "Minneapolis", "NewYork", "Newark", "Providence", "StLouis", "Washington", "Portland")
for(i in metrolist){
  metro=i
  if (metro =="Cincinnati"){(counties= c("Brown", "Butler", "Clermont", "Hamilton", "Warren"))
    blocksA<-blocks("OH", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/OH_block10_2000.shp')
    
    counties= c("Boone", "Bracken", "Campbell", "Gallatin", "Grant", "Kenton", "Pendleton")
    blocksC<-blocks("KY", county = c(counties), year = 2000 )
    shapeC<-readOGR('shapefiles/KY_block10_2000.shp')    
        
    counties= c("Dearborn", "Franklin", "Ohio")
    blocksB<-blocks("IN", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/IN_block10_2000.shp')
    

    shape<- rbind(shapeA, shapeB)
    shape<- rbind(shape, shapeC)
    
    
    blocks<- rbind(blocksA, blocksB)
    blocks<- rbind(blocks, blocksC)
    counties = c("Brown", "Butler", "Clermont", "Hamilton", "Warren", "Dearborn", "Franklin", "Ohio", "Boone", 
                 "Bracken", "Campbell", "Gallatin", "Grant", "Kenton", "Pendleton")
    
    shapeA<-NULL
    shapeB<-NULL
    shapeC<-NULL
  }else if (metro =="Kansas"){(counties= c("Franklin", "Johnson", "Leavenworth", "Linn ", "Miami", "Wyandotte"))
    blocksA<-blocks("KS", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/KS_block10_2000.shp')
    
    counties= c("Bates", "Caldwell", "Cass", "Clay", "Clinton", "Jackson", "Lafayette", "PLatte", "Ray")
    blocksB<-blocks("MO", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/MO_block10_2000.shp')    
    
    shape<- rbind(shapeA, shapeB)

    
    blocks<- rbind(blocksA, blocksB)
    counties = c("Franklin", "Johnson", "Leavenworth", "Linn ", "Miami", "Wyandotte", "Bates", "Caldwell", 
                 "Cass", "Clay", "Clinton", "Jackson", "Lafayette", "PLatte", "Ray")
    
    shapeA<-NULL
    shapeB<-NULL
  }else if (metro =="Minneapolis"){(counties= c("Anoka", "Carver", "Chisago ", "Dakota ", "Hennepin", "Isanti ", 
                                                "Ramsey ", "Scott ", "Sherburn", "Washington", "Wright"))
    blocksA<-blocks("MN", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/MN_block10_2000.shp')
    
    counties= c("Pierce", "St. Croix")
    blocksB<-blocks("WI", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/WI_block10_2000.shp')    
    
    shape<- rbind(shapeA, shapeB)
    
    
    blocks<- rbind(blocksA, blocksB)
    counties = c("Anoka", "Carver", "Chisago ", "Dakota ", "Hennepin", "Isanti ", 
                 "Ramsey ", "Scott ", "Sherburn", "Washington", "Wright", "Pierce", "St. Croix")
    
    shapeA<-NULL
    shapeB<-NULL
    
  }else if (metro =="Kansas"){(counties= c("Franklin", "Johnson", "Leavenworth", "Linn ", "Miami", "Wyandotte"))
    blocksA<-blocks("KS", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/KS_block10_2000.shp')
    
    counties= c("Bates", "Caldwell", "Cass", "Clay", "Clinton", "Jackson", "Lafayette", "PLatte", "Ray")
    blocksB<-blocks("MO", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/MO_block10_2000.shp')    
    
    shape<- rbind(shapeA, shapeB)
    
    
    blocks<- rbind(blocksA, blocksB)
    counties = c("Franklin", "Johnson", "Leavenworth", "Linn ", "Miami", "Wyandotte", "Bates", "Caldwell", 
                 "Cass", "Clay", "Clinton", "Jackson", "Lafayette", "PLatte", "Ray")
    
    shapeA<-NULL
    shapeB<-NULL
    
  }else if (metro =="NewYork"){(counties= c("Bergen",  "Hudson", "Passaic"))
    blocksA<-blocks("NJ", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/NJ_block10_2000.shp')
    
    counties= c("Bronx", "Kings", "New York", "Putnam", "Queens", "Richmond", "Rockland", "Westchester")
    blocksB<-blocks("NY", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/NY_block10_2000.shp')    
    
    shape<- rbind(shapeA, shapeB)
    
    
    blocks<- rbind(blocksA, blocksB)
    counties = c("Bronx", "Kings", "New York", "Putnam", "Queens", "Richmond", "Rockland", "Westchester", 
                  "Bergen",  "Hudson", "Passaic")
    
    shapeA<-NULL
    shapeB<-NULL
  
  }else if (metro =="Newark"){(counties= c("Essex", "Hunterdon", "Morris", "Sussex", "Union"))
    blocksA<-blocks("NJ", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/NJ_block10_2000.shp')
    
    counties= c("Pike")
    blocksB<-blocks("PA", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/PA_block10_2000.shp')    
    
    shape<- rbind(shapeA, shapeB)
    
    
    blocks<- rbind(blocksA, blocksB)
    counties = c("Essex", "Hunterdon", "Morris", "Sussex", "Union", "Pike")
    
    shapeA<-NULL
    shapeB<-NULL  
    
  }else if (metro =="Providence"){(counties= c("Bristol"))
    blocksA<-blocks("MA", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/MA_block10_2000.shp')
    
    counties= c("Bristol", "Kent", "Newport", "Providence", "Washington")
    blocksB<-blocks("RI", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/RI_block10_2000.shp')    
    
    shape<- rbind(shapeA, shapeB)
    
    
    blocks<- rbind(blocksA, blocksB)
    counties = c("Bristol", "Kent", "Newport", "Providence", "Washington")
    
    shapeA<-NULL
    shapeB<-NULL
   
    
  }else if (metro =="StLouis"){(counties= c("Bond", "Calhoun", "Clinton ", "Jersey ", "Macoupin", "Madison", "Monroe", 
                                             "St. Clair"))
    blocksA<-blocks("IL", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/IL_block10_2000.shp')
    
    counties= c("Crawford", "Franklin", "Jefferson", "Lincoln ", "St. Charles", "St. Louis County", "Warren ",
                "Washington", "St. Louis City")
    blocksB<-blocks("MO", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/MO_block10_2000.shp')    
    
    shape<- rbind(shapeA, shapeB)
    
    
    blocks<- rbind(blocksA, blocksB)
    counties = c("Crawford", "Franklin", "Jefferson", "Lincoln ", "St. Charles", "St. Louis County", "Warren ", "Washington", 
                 "St. Louis City","Bond", "Calhoun", "Clinton ", "Jersey ", "Macoupin", "Madison", "Monroe", 
                 "St. Clair")
    
    shapeA<-NULL
    shapeB<-NULL
  }else if (metro =="Washington"){(counties= c("District of Columbia"))
    blocksA<-blocks("DC", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/DC_block10_2000.shp')
    
    counties= c("Calvert", "Charles", "Prince George")
    blocksC<-blocks("MD", county = c(counties), year = 2000 )
    shapeC<-readOGR('shapefiles/MD_block10_2000.shp')    
    
    counties= c("Arlington ", "Clarke ", "Fairfax City", "Fauquier ", "Loudoun ", "Prince William", "Spotsylvania ", "Stafford ", 
                "Warren ", "Alexandria", "Fairfax County", "Falls Church ", "Fredericksburg", "Manassas", "Manassas Park")
    blocksB<-blocks("VA", county = c(counties), year = 2000 )
    shapeB<-readOGR('shapefiles/VA_block10_2000.shp')
    
    counties= c("Jefferson")
    blocksD<-blocks("WV", county = c(counties), year = 2000 )
    shapeD<-readOGR('shapefiles/WV_block10_2000.shp')
    
    shape<- rbind(shapeA, shapeB)
    shape<- rbind(shape, shapeC)
    shape<- rbind(shape, shapeD)
    
    
    blocks<- rbind(blocksA, blocksB)
    blocks<- rbind(blocks, blocksC)
    blocks<- rbind(blocks, blocksD)
    counties = c("Washington", "Jefferson", "Calvert", "Charles", "Prince George", "Arlington ", "Clarke ", "Fairfax City",
                 "Fauquier ", "Loudoun ", "Prince William", "Spotsylvania ", "Stafford ", 
                 "Warren ", "Alexandria", "Fairfax County", "Falls Church ", "Fredericksburg", "Manassas", "Manassas Park")
    
    shapeA<-NULL
    shapeB<-NULL
    shapeC<-NULL
  
  }else if (metro =="Portland"){(counties= c("Clackamas", "Columbia", "Multnomah", "Washington", "Yamhill"))
    blocks<-blocks("OR", county = c(counties), year = 2000 )
    shape<-readOGR('shapefiles/OR_block10_2000.shp')  
    
    
    counties= c("Clark", "Skamania")
    blocksA<-blocks("WA", county = c(counties), year = 2000 )
    shapeA<-readOGR('shapefiles/WA_block10_2000.shp') 
    
    shape<- rbind(shape, shapeA)
    blocks<- rbind(blocks, blocksA)
    
    counties= c("Clackamas", "Columbia", "Multnomah", "Washington", "Yamhill", "Clark", "Skamania")
    
    }

  # a
  # load pop data based on county name + merge
  pop_metro<- pop[COUNTY %in% c(counties)]
  
  shape_metro <- merge(blocks, shape)
  
  # bmt
  # change projection to UTM  
  x=i
  source('Rscript/working/UTMprojection.R')
  
  # c
  # order data after GISJOIN
  shape_UTM <- shape_UTM[order(shape_UTM$GISJOIN), ]
  pop_metro <- pop_metro[order(pop_metro$GISJOIN), ] 
  
  # d
  # merge pop data to shape data
  shape_UTM <- merge(shape_UTM, pop_metro, by = "GISJOIN")
  
  
  N=length(shape_UTM@data)
  
  
  results<-mapply(spseg, maxdist=c(500,4000), MoreArgs= list(x=shape_UTM,
                                                             data=shape_UTM@data[,32:33] ,
                                                             nrow = N,
                                                             ncol = 2,
                                                             power=2,
                                                             useExp = F,
                                                             scale = T))
  mtx_wb[nrow(mtx_wb) + 1,] = list(metro= i, H500=results[[1]]@h, H4000=results[[2]]@h)
  
  results<-mapply(spseg, maxdist=c(500,4000), MoreArgs= list(x=shape_UTM,
                                                             data=shape_UTM@data[,c('white', 'Hispanic')] ,
                                                             nrow = N,
                                                             ncol = 2,
                                                             power=2,
                                                             useExp = F,
                                                             scale = T))
  mtx_wH[nrow(mtx_wH) + 1,] = list(metro= i, H500=results[[1]]@h, H4000=results[[2]]@h)
  
  
  results<-mapply(spseg, maxdist=c(500,4000), MoreArgs= list(x=shape_UTM,
                                                             data=shape_UTM@data[,c('white', 'Asian')] ,
                                                             nrow = N,
                                                             ncol = 2,
                                                             power=2,
                                                             useExp = F,
                                                             scale = T))
  mtx_wA[nrow(mtx_wA) + 1,] = list(metro= i, H500=results[[1]]@h, H4000=results[[2]]@h)
  
  
  results<-mapply(spseg, maxdist=c(500,4000), MoreArgs= list(x=shape_UTM,
                                                             data=shape_UTM@data[,32:35] ,
                                                             nrow = N,
                                                             ncol = 4,
                                                             power=2,
                                                             useExp = F,
                                                             scale = T))
  mtx_wbHA[nrow(mtx_wbHA) + 1,] = list(metro= i, H500=results[[1]]@h, H4000=results[[2]]@h)
  
  
  
}





