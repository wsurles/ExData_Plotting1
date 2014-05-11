##|--------------------
##| Get and Clean data
##|--------------------

##| Memory calculation
## 2,075,259 rows
## 9 columns
bytes <- 2075259 * 9 * 8
mb <- bytes / 2^20
gb = mb/1000
## .142 GB
## should be fine loading the whole thing

##| Load faster by setting colClasses first
initial <- read.table("household_power_consumption.txt", 
                      header = T,
                      sep = ";",
                      nrows = 100)
classes <- sapply(initial, class)
df <- read.table("household_power_consumption.txt",
                 header = T,
                 sep = ";",
                 na.strings = "?",
                 colClasses = classes)

##| Subset to desired days
##| Set Date and time values
df$Date = as.Date(df$Date, "%d/%m/%Y")

df2 <- subset(df, df$Date >= '2007-02-01' & Date <= '2007-02-02')

tmp <- paste(df2$Date, df2$Time)
df2$Time <- strptime(tmp, "%Y-%m-%d %H:%M:%S")

save(df2, file ="power.RData")
