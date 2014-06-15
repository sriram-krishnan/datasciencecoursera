# Declaring the function PollutantMean which calculates the mean of a given 
# pollutant from the csv files

pollutantmean <- function(directory, pollutant, id = 1:332)
{    
        meandata = numeric()
        for (i in id)
        {
                # reading the data from the csv file using the paste() and formatC()
                
                datafile = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                                          ".csv", sep = ""))
                
                # combining the numerice data from the pollutant columns using c()
                
                meandata = c(meandata, datafile[,pollutant])
                
        }
        
        #return the mean of the data read from the pollutant column of the csv files
        
        return(mean(meandata, na.rm = TRUE))
        
}

# Output Test cases

# pollutantmean("specdata", "nitrate", 23)
# pollutantmean("specdata", "nitrate", 70:72)
# pollutantmean("specdata", "sulfate", 1:10)