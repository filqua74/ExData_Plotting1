# Source function
source("./loaddata.R")
source("./plot1.R")
source("./plot2.R")
source("./plot3.R")
source("./plot4.R")

# Load data
if (!exists("dati")) 
  dati <- loaddata();
  
# English LOcale
Sys.setlocale("LC_TIME", "English") 

# Create plot 1 png
plot1()
print("Plot1 created")

# Create plot 2 png
plot2()
print("Plot2 created")

# Create plot 3 png
plot3()
print("Plot3 created")

# Create plot 4 png
plot4()
print("Plot4 created")






