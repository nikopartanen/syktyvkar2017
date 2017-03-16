library(webshot)
library(tidyverse)

slide_range <- 1:23

slide_range %>% map(~ webshot(paste0("https://nikopartanen.github.io/syktyvkar2017/slides#", .), paste0("slides/slide-", ., ".png"), delay = 1))

system('convert "slides/*.{png}" slides.pdf')
