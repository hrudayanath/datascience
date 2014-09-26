complete <- function(directory, id = 1:332)
{
	#lofs <- list.files(path = directory)
	print_row = c("id","nobs")
       print (print_row)
	write(print_row, file = "/tmp/complete_cases.csv", sep = ",")
	for(oneid in id)
	{
		filname <- paste(directory, "/", sprintf("%03d", oneid), ".csv", sep = "")
	
		nors = nrow (na.exclude(read.csv(filname)))
		print_row = c(oneid,nors)
		write(print_row, file = "/tmp/complete_cases.csv",append = TRUE, sep = ",")
	}
	comp_cases = read.csv("/tmp/complete_cases.csv")
	comp_cases 	
} 
