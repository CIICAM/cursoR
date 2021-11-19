library(ggplot2)
library(ggcorrplot)

# Correlation matrix
data(mtcars)
corr <- round(cor(mtcars), 1)

# Plot
p = ggcorrplot(corr, hc.order = TRUE, 
           type = "lower", 
           lab = TRUE, 
           lab_size = 3, 
           method="circle", 
           colors = c("#E28316", "#E7E0DE", "#21BEC9"), 
           title="Correlogram of mtcars", 
           ggtheme=theme_minimal())

ggsave("apresentacao_files/plot_example.png", p, height = 6, width = 8)
