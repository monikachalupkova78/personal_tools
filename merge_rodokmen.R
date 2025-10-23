setwd("C:/Users/Monik/Desktop/sasr")
merge=read.table("rep2018.txt", header=T)
chore=read.table("met2018.txt", header=T)

library(data.table)
data<- fread("C:/Users/Monik/Desktop/sasr/metritisdnodpkey.csv")

Combined_data<- merge(x = data,       
                      y = data2,
                      by = "ID")  
left_join <- merge(x = data3,         
                   y = data4,         
                   by = "ID",        
                   all.x = TRUE)      
write.table(left_join, "kravyfin33.txt")
write.csv(left_join, "kravychore.csv")

outer_join <- merge(x = data,             
                    y = data23,             
                    by = "ID",            
                    all = TRUE) 
right_join <- merge(x = data,             # First data frame
                    y = data23,              # Second data frame
                    by = "ID",             # Common column to merge on
                    all.y = TRUE)  
write.table(right_join, "met201999.txt")

write.csv(left_join, "123.cvs")
