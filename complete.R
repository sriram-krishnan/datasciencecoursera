# Declaring the function Complete which displays the File number as ID 
# the number of complete cases in each file

complete <- function(directory, id = 1:332) 
{
        nbr = numeric()
        for (i in id)
        {
                #reading the data from the csv file using the paste() and formatC()
                
                datafile = read.csv(paste(directory, "/", 
                                          formatC(i, width = 3, flag = "0"), 
                                          ".csv", sep = ""))
                
                # combining the numerice data from the pollutant columns using c()
                
                nbr = c(nbr,sum(complete.cases(datafile)))
                
        }
        
        #return the file number as id and complete cases using data.frame()
        
        return(data.frame(id, nbr))
}

# Output Test cases

# complete("specdata", c(2, 4, 8, 10, 12))
# complete("specdata", 30:25)
# complete("specdata", 3)