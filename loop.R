#----------------------------------------
#
# Load data and calculate H
# for metropolitain areas in one state
# 05/10/19
#
#----------------------------------------

metrolist<-c("SanJose", "SanFrancisco", "LosAngeles", "SantaAna", "Riverside", "Sacramento", "SanDiego", "Oakland", "Baltimore", "Atlanta", 
             "Chicago", "Cleveland", "Colombus", "Dallas", "FtWorth", "Houston", "SanAntonio", "Denver", "Detroit", "Miami", "Orlando",
             "FtLauderdale", "Tampa", "Edison", "Philadelphia", "Pittsburgh", "Phoenix", "Seattle", "Warren", "Boston", "Nassau")
for(i in metrolist){
  metro=i
  if (metro =="SanJose"){(counties= c("Santa Clara", "San Benito"))
                          blocks<-blocks("CA", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/CA_block10_2000.shp')
  }else if (metro =="SanFrancisco"){(counties= c("Marin", "San Francisco", "San Mateo"))
                          blocks<-blocks("CA", county = c(counties), year = 2000 )
  }else if (metro =="LosAngeles"){(counties= c("Los Angeles"))
                          blocks<-blocks("CA", county = c(counties), year = 2000 )
  }else if (metro =="SantaAna"){(counties= c("Orange"))
                          blocks<-blocks("CA", county = c(counties), year = 2000 )
  }else if (metro =="Riverside"){(counties= c("Riverside", "San Bernardino"))
                          blocks<-blocks("CA", county = c(counties), year = 2000 )
  }else if (metro =="Sacramento"){(counties= c("El Dorado", "Placer", "Sacramento", "Yolo"))
                          blocks<-blocks("CA", county = c(counties), year = 2000 )
  }else if (metro =="SanDiego"){(counties= c("San Diego"))
                          blocks<-blocks("CA", county = c(counties), year = 2000 )
  }else if (metro =="SantaBarbara"){(counties= c("Santa Barbara"))
                          blocks<-blocks("CA", county = c(counties), year = 2000 )
  }else if (metro =="Oakland"){(counties= c("Alameda", "Contra Costa"))
                          blocks<-blocks("CA", county = c(counties), year = 2000)
  }else if (metro =="Baltimore"){(counties= c("Anne Arundel", "Baltimore County","Carroll", "Harford", "Howard", "Queen Anne", "Baltimore city"))
                          blocks<-blocks("MD", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/MD_block10_2000.shp')
  }else if (metro =="Atlanta"){(counties= c("Barrow", "Bartow","Butts", "Carroll", "Cherokee", "Clayton", "Cobb", "Coweta", "Dawson", 
                                              "DeKalb", "Douglas", "Fayette", "Forsyth", "Fulton", "Gwinnett", "Haralson", "Heard", "Henry", 
                                              "Jasper", "Lamar", "Meriwether", "Newton", "Paulding", "Pickens", "Pike", "Rockdale", "Spalding", "Walton"))
                          blocks<-blocks("GA", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/GA_block10_2000.shp')                       
  }else if (metro =="Chicago"){(counties= c("Cook","DeKalb","DuPage","Grundy", "Kane","Kendall","McHenry","Will County"))
                          blocks<-blocks("IL", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/IL_block10_2000.shp')   
  }else if (metro =="Cleveland"){(counties= c("Cuyahoga", "Geauga", "Lake", "Lorain", "Medina"))
                          blocks<-blocks("OH", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/OH_block10_2000.shp') 
  }else if (metro =="Colombus"){(counties= c("Delaware", "Fairfield", "Franklin", "Licking", "Madison", "Morrow", "Pickaway", "Union"))
                          blocks<-blocks("OH", county = c(counties), year = 2000 )
  }else if (metro =="Dallas"){(counties= c("Collin County", "Dallas", "Delta", "Denton", "Ellis", "Hunt", "Kaufman", "Rockwall"))
                          blocks<-blocks("TX", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/TX_block10_2000.shp')   
  }else if (metro =="FtWorth"){(counties= c("Johnson", "Parker", "Tarrant", "Wise"))
                          blocks<-blocks("TX", county = c(counties), year = 2000 )
  }else if (metro =="Houston"){(counties= c("Austin ", "Brazoria ", "Chambers", "Fort Bend", "Galveston", "Harris ", "Liberty", "Montgomery", 
                                            "San Jacinto", "Waller"))
                          blocks<-blocks("TX", county = c(counties), year = 2000 )
  }else if (metro =="SanAntonio"){(counties= c("Atascosa", "Bandera ", "Bexar ", "Comal ", "Guadalupe", "Kendall ", "Medina ", "Wilson"))
                          blocks<-blocks("TX", county = c(counties), year = 2000 )
  }else if (metro =="Denver"){(counties= c("Adams ", "Arapahoe", "Broomfield", "Clear Creek", "Denver ", "Douglas ", "Elbert ", "Gilpin ", 
                                           "Jefferson", "Park"))
                            blocks<-blocks("CO", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/CO_block10_2000.shp')   
  }else if (metro =="Detroit"){(counties= c("Wayne"))
                          blocks<-blocks("MI", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/MI_block10_2000.shp')   
  }else if (metro =="Miami"){(counties= c("Miami-Dade"))
                          blocks<-blocks("FL", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/FL_block10_2000.shp')   
  }else if (metro =="Orlando"){(counties= c("Lake", "Orange", "Osceola", "Seminole"))
                          blocks<-blocks("FL", county = c(counties), year = 2000 )    
  }else if (metro =="FtLauderdale"){(counties= c("Broward"))
                          blocks<-blocks("FL", county = c(counties), year = 2000 )    
  }else if (metro =="Tampa"){(counties= c("Hernando ", "Hillsborough", "Pasco ", "Pinellas"))
                          blocks<-blocks("FL", county = c(counties), year = 2000 )    
  }else if (metro =="Edison"){(counties= c( "Middlesex", "Monmouth", "Ocean", "Somerset"))
                          blocks<-blocks("NJ", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/NJ_block10_2000.shp')                       
  }else if (metro =="Philadelphia"){(counties= c("Bucks", "Chester", "Delaware", "Montgomery", "Philadelphia"))
                          blocks<-blocks("PA", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/PA_block10_2000.shp')                       
  }else if (metro =="Pittsburgh"){(counties= c("Allegheny ", "Armstrong", "Beaver",  "Butler", "Fayette", "Washington", "Westmoreland"))
                          blocks<-blocks("PA", county = c(counties), year = 2000 )                                                   
  }else if (metro =="Phoenix"){(counties= c("Maricopa", "Pinal"))
                          blocks<-blocks("AZ", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/AZ_block10_2000.shp')                           
  }else if (metro =="Seattle"){(counties= c("King", "Snohomish"))
                          blocks<-blocks("WA", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/WA_block10_2000.shp')                           
  }else if (metro =="Warren"){(counties= c("Lapeer", "Livingston", "Macomb", "Oakland", "St. Clair"))
                          blocks<-blocks("MI", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/MI_block10_2000.shp')                           
  }else if (metro =="Boston"){(counties= c("Norfolk", "Plymouth", "Suffolk"))
                          blocks<-blocks("MA", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/MA_block10_2000.shp')  
  }else if (metro =="Nassau"){(counties= c("Nassau", "Suffolk"))
                          blocks<-blocks("NY", county = c(counties), year = 2000 )
                          shape<-readOGR('shapefiles/NY_block10_2000.shp')                            
    
    
                          
                             }

  # a
  # load pop data based on county name + merge
  pop_metro<- pop[COUNTY %in% c(counties)]
  
  shape_metro <- merge(blocks, shape)
  
  # b
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




