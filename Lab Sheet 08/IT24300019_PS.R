getwd()

setwd("C:/Users/it24300019/Desktop/IT24300019_PS")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)


weights <- data$Weight.kg.


pop_mean <- mean(weights)
pop_sd <- sd(weights)

cat("Population Mean:", pop_mean, "\n")
cat("Population SD:", pop_sd, "\n")


set.seed(123) 

sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  sample_i <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_i)
  sample_sds[i] <- sd(sample_i)
}


cat("\nSample Means:\n")
print(sample_means)

cat("\nSample SDs:\n")
print(sample_sds)


mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("\nMean of Sample Means:", mean_of_sample_means, "\n")
cat("SD of Sample Means:", sd_of_sample_means, "\n")


cat("\nRelationship:\n")
cat("1. The mean of the sample means is approximately equal to the population mean.\n")
cat("2. The SD of the sample means is smaller than the population SD.\n")
cat("   It approximates the Standard Error of the Mean (pop_sd / sqrt(sample size)).\n")
