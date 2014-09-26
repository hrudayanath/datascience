corr <- function(directory, threshold = 0)
{	
	if (threshold == 0)
		return (0)
	corrs <- c()
	lofs <- list.files(path = directory)
	for(onefile in lofs)
	{
		filname <- paste(directory, "/", onefile , sep = "")
		df_widoutNA <- na.exclude(read.csv(filname))
		nors = nrow (df_widoutNA)
		if (nors < threshold)
		{
			next
		}
		corrs <- c(corrs, cor(df_widoutNA$nitrate,df_widoutNA$sulfate) )
	}
	corrs
} 
