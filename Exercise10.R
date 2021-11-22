###Question 1
#load data
oxygen <- read.table("oxygen_data.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#create scatterplot with trendline
ggplot(data = oxygen, aes(x = X..Oxygen, y = Phosphorescence.Quenching)) +
  geom_point() +
  xlab("Percent Oxygen in Gas") +
  ylab("Phosphorescence Quenching") +
  stat_smooth(method = "lm") +
  theme_classic()

###Question 2
#load data
data <- read.table(file = "data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#create bar plot of means
ggplot(data = data, aes(x = region, y = observations)) +
  stat_summary(fun = mean, geom = "bar") +
  ylab("average observations")
#create scatterplot of all observations
ggplot(data = data, aes(x = region, y = observations)) + 
  geom_jitter() +
  theme_classic()
#The bar plot does not reveal the distribution of the observations for each population
#even though the populations have similar means, they are distributed completely differently
