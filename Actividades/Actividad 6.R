
#Actividad 6

#1.
p<-ggplot(mpg,aes(x=hwy,y=cty))+geom_point()
p + labs(title = "diagrama de dispercion",subtitle = "mpg en ruta vs en ciudad", x = "milla por galon en ruta", y = "milla por galon en ciudad")

#2.
p<-ggplot(data = mpg,mapping = aes(x=hwy,y=cty))
p+geom_jitter(alpha=0.3)

#3.
p<-ggplot(data = mpg,aes(hwy,cty,colour=class)) + geom_jitter(alpha=0.3,)
p
p+scale_color_brewer(,palette = "Dark2")
ggplot(mpg,aes(x=hwy,y=cty,colour=class))+geom_point()+facet_wrap(~class)


