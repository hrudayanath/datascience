kmean_specdata <- function(k,directory, id = 1:332)
{
	#lofs <- list.files(path = directory)
	i <- 1
	for(oneid in id)
	{
		filname <- paste(directory, "/", sprintf("%03d", oneid), ".csv", sep = "")
		if( 1 == i)
		{
			full_df <- na.exclude(read.csv(filname))
			i = i + 1
		}
		else
		{
			full_df <- rbind(full_df, na.exclude(read.csv(filname)))
		}
	}
	final_df <- data.frame (full_df$nitrate, full_df$sulfate)
	colnames(final_df) <- c("nitrate","sulfate")
	cl <- kmeans(final_df, k)
	
	plot(final_df, col = cl$cluster)
	points(cl$centers, col=1:k, pch = 8, cex = 2)

} 
