#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment
#getwd()
#setwd()

#This brings the 'Titanic' data into my environment from Base R (Run this)
data(Titanic)

#This code saves the Titanic data as a dataframe with a new name
#TASK: Save the Titanic data as a dataframe with a new name that includes your first name
MounikaTitanic <- as.data.frame(Titanic)

#for example I would name my data AnnaTitanic

#This code chunk allows me to see the top 2 rows of my data
#TASK: Write the code that returns the top rows

top2rows <- head(MounikaTitanic,2)

print(top2rows)

#This code chunk shows me the internal structure 
#Task: Write the code that shows the number of rows, columns, column names, class of columns   

# Number of rows and columns
num_rows <- nrow(MounikaTitanic)
num_cols <- ncol(MounikaTitanic)

print(paste("No.of rows=", num_rows))
print(paste("No.of columns=", num_cols))

# Column names
column_names <- colnames(MounikaTitanic)

print(column_names)

# Class of columns
column_classes <- sapply(MounikaTitanic, class)

print(column_classes)


#This code chunk shows me some basic summary stats
#Such as Min, Max, Mean. Quartiles...
#Task: Write the code that gives summary stats

# Summary stats for Frequency column from dataframe.
print(summary(MounikaTitanic$Freq))

#This allows me to save one column as its own object ('values' in the Environment)
#Task: Write the code to create an object for just the Sex column 
#and write the code to create an object for just the Age column 
#(these should show as values in the environment window, not as 'datasets'Data')

Sex <-MounikaTitanic$Sex
Age <-MounikaTitanic$Age

#This takes the individual objects ('values' in the Environment) and creates a dataframe
#Once I do this, I can see the Data in the Environment 
#Task: Write the code to create one new data.frame from the Sex and Age values you just created

new_MounikaTitanic <- data.frame(Sex = Sex, Age = Age)

#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#Task: Write the code to create a subset of the data where the Freq is > 25
#If I wanted to save the subset, I would need to name it as done in the code above

done <- MounikaTitanic[MounikaTitanic$Freq>25,]
done
#This shows me how many rows are in my dataset and
#TASK: Write the code that returns the number of rows
cat("Number of rows in dataset = ", nrow(done), "\n")

#This shows me how many columns are in my dataset
#TASK: Write the code that returns the number of columns

cat("Number of columns in dataset = ", ncol(done), "\n")

#This also shows me how many rows and columns with just one command
#TASK: Write the code that returns the number of rows and columns with just one command

dimensions <- dim(done)
cat("Number of rows in dataset using dimensions = ", dimensions[1], "\n")
cat("Number of columns in dataset using dimensions = ", dimensions[2], "\n")

#This code will install the ggplot2 package
#TASK: Write the code that installs the ggplot2 package
install.packages("ggplot2")
  
#This code calls the ggplot2 package so I can use its functions
#Task: Write the code that 'calls' the ggplot2 package
library("ggplot2")

#This code creates a bar chart of the number of passengers that survived 
#and did not survive (2 bars)
survival_counts <- data.frame(Survived = c("Yes", "No"),
                              Count = c(sum(MounikaTitanic$Survived == "Yes"),
                                        sum(MounikaTitanic$Survived == "No")))


#Task: replace the dataframe name and column names to create the chart

#(you should see the chart in the Plots window)
ggplot(survival_counts, aes(x = Survived, y = Count)) +
 geom_col()

