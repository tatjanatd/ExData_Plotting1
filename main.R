
library(utils)
Sys.setlocale("LC_TIME", "English")  
## The dataset has 2,075,259 rows and 9 columns. First calculate 
## a rough estimate of how much memory the dataset will require in 
## memory before reading into R. Make sure your computer has enough 
## memory (most modern computers should be fine).
filename <- "household_power_consumption.txt"
file.exists(filename)
si <- file.info(filename)$size
## units="Mb",  byte --> kilobyte  --> megabyte
si/1024/1024

pr <- proc.time()
data <- read.table(filename, sep=";",   header=T, na.string="?")
proc.time() - pr  ### 55sec
dim(data)
head(data)
## We will only be using data from the dates 2007-02-01 and 
## 2007-02-02. One alternative is to read the data from just those 
## dates rather than reading in the entire dataset and subsetting to those dates.
## You may find it useful to convert the Date and Time variables to Date/Time 
## classes in R using the strptime() and as.Date() functions.
## Note that in this dataset missing values are coded as ?
# str(data)  # Date and Time as Factors
# data[1,1]== "16/12/2006"
data$mydate <- as.Date(as.character(data$Date), format="%d/%m/%Y")
w <- which(data$mydate %in% c(as.Date("2007-02-01"), as.Date("2007-02-02") ) ); length(w)
daten <- data[w , ] #subset(data, as.character(data$Date) %in% c("01/02/2007", "02/02/2007"))
dim(daten) # 2880   9

# table(daten$mydate) # 1440 per day, i.e. every minute an observation
daten$datetime <- strptime(paste(as.character(daten$mydate), as.character(daten$Time)), format="%Y-%m-%d %H:%M:%S")
# head(daten)
save(daten, file="household_power_data_2days.RData")

## Plot 1
# plot(daten$time, daten$Global_active_power, type='l', ylab="Global Active Power (kilowatts)")


 




