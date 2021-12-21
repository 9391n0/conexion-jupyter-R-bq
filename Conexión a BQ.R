rm(list=ls())
gc()
.rs.restartR()
setwd("C:/Users/fernando.ornat/Desktop/Pricing")

# Librerías
library("bigrquery")

# Bajada
billing <- 'delivery-and-support' # Reemplazar con el Proyect ID que querramos
query = '
SELECT *
FROM  *
GROUP BY 1'


df2 <- bq_table_download(bq_project_query(billing, query))

# Esto es por si queremos bajarla
write.csv(df,'bajada_peru_bq.csv')