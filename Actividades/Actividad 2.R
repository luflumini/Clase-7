#Actividad 2

#Ejercicio 1
# x<-c("Bueno","Muy bueno","Excelente","Bueno")
#1. new_x<-factor(x,levels=c("malo","bueno","muy bueno","excelente"))
#2. new_xx <- ordered(new_x, levels = c("excelente", "muy bueno", "bueno", "malo"))
#3. new_x<- relevel(new_x,"excelente")
#4. order_x<-factor(x,
#                levels=(c("excelente","muy bueno","bueno","malo")),
#               labels = c("e", "mb", "b", "m"))

#Ejercicio 2

#1. z<-array(c(1:6, 10:15, 20:25), c(3, 2, 3))
#2. z[, , 3]

#Ejercicio 3

#1.
# Género<-c("H","M","H","H","M")
# Piel<-c("N","B","A","N","B")
# Edad<-c("20","21","22","23","24")
# Peso<-c("70","55","65","80","57")
# df<-data.frame(género,Piel,Edad,Peso)

#2.
# str(df)

#3. 
# Altura<-c("180","150","167","180","140")
# df2<-cbind(df,Altura)

#4.
# df<-rbind(df,c("M","N","28","53"))

#5.
# str(df)

#6.
# df$Edad[which.max(df$Edad)]

