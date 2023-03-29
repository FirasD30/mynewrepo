#first set your working directory
install.packages('raster')
library(raster)


fire <- raster("final_fire.asc")
height <- raster("stand_height.asc")

#et cetera et cetera

#now you can resample your rasters to be exactly like your target raster
heightb <- resample(height, fire)

#et cetera et cetera


writeRaster(heightb, "stand_height1.asc", overwrite = TRUE)

#et cetera et cetera et cetera