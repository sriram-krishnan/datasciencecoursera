# Declaring the function Complete which calculates the correlation between sulphate
# and nitrate for locations where the complete cases are greater than the threshold

corr <- function(directory, threshold = 0) 
{
        # reading the id's from the complete function
        
        df = complete(directory)
        ids = df[df["nbr"] > threshold, ]$id
                
        corrr = numeric()
        for (i in ids) 
                {
                
                datafile = read.csv(paste(directory, "/", 
                                          formatC(i, width = 3, flag = "0"), 
                                         ".csv", sep = ""))
                dff = datafile[complete.cases(datafile), ]
                corrr = c(corrr, cor(dff$sulfate, dff$nitrate))
                
                }
        
        return(corrr)
}

# Output Test cases

# cr <- corr("specdata", 150)
# head(cr)        
# summary(cr)