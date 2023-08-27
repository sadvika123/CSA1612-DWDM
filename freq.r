a) # Sales price records
sales_prices <- c(5, 10, 11, 13, 15, 35, 50, 55, 72, 92, 204, 215)

# Calculate the number of records per bin
bin_size <- length(sales_prices) / 3

# Perform equal-frequency partitioning
equal_freq_bins <- cut(sales_prices, breaks = quantile(sales_prices, probs = c(0, 1/3, 2/3, 1)), include.lowest = TRUE)

# Print the bins
print(equal_freq_bins)

b)
# Calculate the width of each bin
bin_width <- (max(sales_prices) - min(sales_prices)) / 3

# Perform equal-width partitioning
equal_width_bins <- cut(sales_prices, breaks = seq(min(sales_prices), max(sales_prices), by = bin_width), include.lowest = TRUE)

# Print the bins
print(equal_width_bins)

c)
num_clusters <- 3
clustering <- kmeans(matrix(sales_prices, ncol = 1), centers = num_clusters)

# Assign each record to a cluster
cluster_assignments <- clustering$cluster

# Print the cluster assignments
print(cluster_assignments)
