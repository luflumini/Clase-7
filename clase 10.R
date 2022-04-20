install.packages(tidyverse)
library(tidyverse)

head(mtcars)

filter(mtcars,mpg>22)
(dat_red<- filter(mtcars,mpg>22))

filter(mtcars,mpg==24.4 & gear==4)
filter(mpg,manufacturer %in% c("audi", "honda") & year == 1999 & cyl==4)

arrange(mtcars,desc(hp))

select(mtcars,ends_with("t"))
select(mtcars, wt:gear)
select(mtcars, -(wt:gear))
select(mtcars, carb, hp, everything())
#El everything sirve para que, despues de elegir que va 
# al principio, se ponga todo el resto

mutate(mtcars, wtkg = wt*0.45359*1000)
# se agrega una nueva variable, si uso la función trasmutate()
# solo me va a dar la nueva variable


mtcars %>% 
  group_by(cyl) %>% 
  summarise(cyl_n= n())

# Es igual a...

mtcars %>% 
  group_by(cyl) %>% 
  count()


mtcars %>% 
  group_by(cyl,gear) %>% 
  count()
