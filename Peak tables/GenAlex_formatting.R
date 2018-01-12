library(tidyr)
setwd("~/EEB_2018-2018/Peak tables")
master <- read.csv("Master_Genos_Sheepnose.csv.", sep = ",")




#Genealex format
master2 <- master[,-c(1)]
master_long <- gather(master2, key = "loci", value = "genotypes",
                      colnames(master2[,-1]))
dummy <- c("high", "low")
master_long$high_low <- rep.int(dummy, nrow(master_long)/2)
master_long$new_genos <- paste(master_long$loci, "_", master_long$high_low)                
master_long2 <- master_long[,-c(2,4)]
master_wide <- spread(master_long2, new_genos, genotypes, fill = 0)


b





