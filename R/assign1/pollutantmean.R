pollutantmean <- function(directory, pollutant, id)
{
	datacolF <- c()
	for(oneid in id)
	{
		filnam = paste(directory,"/", oneid, ".csv",sep="")
		print (filnam)
		dataF = read.csv(filnam)
		#print (dataF)
		#names (dataF)
		datacolt <- dataF[pollutant]
		datacolWONA <- datacolt[!is.na(datacolt)]
		datacolF <- c(datacolF, datacolWONA)
	}
	mean(datacolF)
} 
