# Instalar package gapminder
#install.packages("gapminder")

# Importar librerías
library(gapminder)
library(dplyr)

# Ver dataset gapminder
gapminder

# Filtrar datos que correspondan al año 1957
gapminder %>%
  filter(year == 1957)

# Filtrar datos del country China y year 2002
gapminder %>%
  filter(country == "China", year == 2002)

# Ordenar de manera ascendente lifeExp
gapminder %>%
  arrange(lifeExp)

# Ordenar de manera descendente lifeExp
gapminder %>%
  arrange(desc(lifeExp))

# Filter for the year 1957, then arrange in descending order of population
gapminder %>%
  filter(year == 1957) %>%
  arrange(desc(pop))

# Use mutate to change lifeExp to be in months
gapminder %>%
  mutate(lifeExp = 12*lifeExp)

# Use mutate to create a new column called lifeExpMonths
gapminder %>%
  mutate(lifeExpMonths = 12*lifeExp)


# Filter, mutate, and arrange the gapminder dataset
gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExpMonths = 12*lifeExp) %>%
  arrange(desc(lifeExpMonths))