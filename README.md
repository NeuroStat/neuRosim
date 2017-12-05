# neuRosim
An R package to simulate fMRI Data Including Activated Data, Noise Data and Resting State Data

Author: Marijke Welvaert with contributions from Joke Durnez, Beatrijs
        Moerkerke, Yves Rosseel and Geert Verdoolaege

Welvaert, M., Durnez, J., Moerkerke, B., Verdoolaege, G., & Rosseel, Y. (2011). neuRosim: An R Package for Generating fMRI Data. Journal of statistical software, 44, 1-18.


# Requirements
To install the package directly from Github, one needs to have *devtools* installed. In **R** run:
```{r}
library(devtools)
```

Make sure, you have at least version **1.1.3.** of *devtools* installed. To check, run:
```{r}
packageVersion("devtools")
```

If not updated/installed, run:
```{r}
install.packages('devtools')
```

# Install the package

To install the stable branch, run:
```{r}
devtools::install_github("NeuroStat/neuRosim", ref = "master")
```
