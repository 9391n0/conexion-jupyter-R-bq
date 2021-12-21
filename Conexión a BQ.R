rm(list=ls())
gc()
.rs.restartR()
setwd(".../Desktop/folder")

# Libraries
library("bigrquery")

# Download
billing <- 'delivery-and-support' # Reemplazar con el Proyect ID que querramos
query = '
SELECT *
FROM  *
GROUP BY 1'


df2 <- bq_table_download(bq_project_query(billing, query))

# If we want to download
write.csv(df,'name_file.csv')
