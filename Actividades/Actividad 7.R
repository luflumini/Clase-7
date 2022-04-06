#Ejercicio 1.
#1.
ggplot(data=propina,aes(x= total, y=propina,color=fuma))+
  geom_point()
#2.
ggplot(data=propina,aes(x= total, y=propina,color=fuma))+
  geom_point()+
  labs(x="Total gastado en dólares", y="Propina en dólares")
#3.
ggplot(data=propina,aes(x= total, y=propina,color=fuma))+
  geom_point()+
  labs(x="Total gastado en dólares", y="Propina en dólares",color="Fumador")
#4.
ggplot(data = propina, aes(x = total, y = propina, color = fuma)) +
  geom_point() + 
  labs(x = "Total gastado en dólares", y = "Propina en dólares",color="Fumador")+
  theme(legend.position = "bottom")
#4.
ggplot(data = propina, aes(x = total, y = propina, color = fuma)) +
  geom_point() + 
  labs(x = "Total gastado en dólares", y = "Propina en dólares",color="Fumador")+
  theme(legend.position = "bottom")+
  scale_colour_brewer(palette = "Set1")

#Ejercicio 2

#1.
ggplot(data = propina, aes(x = total, y = propina, color = fuma)) +
  geom_point()+
  geom_smooth() + 
  labs(x = "Total gastado en dólares", y = "Propina en dólares",color="Fumador")+
  theme(legend.position = "bottom")+
  scale_colour_brewer(palette = "Set1")

#2.
ggplot(data = propina, aes(x = total, y = propina, color = fuma)) +
  geom_point()+
  geom_smooth(color="black") + 
  labs(x = "Total gastado en dólares", y = "Propina en dólares",color="Fumador")+
  theme(legend.position = "bottom")+
  scale_colour_brewer(palette = "Set1")

#Ejercicio 3 

#1. 
ggplot(data= propina,aes( x= dia))+
geom_bar()

#2.
ggplot(data= propina,aes( x= dia,fill=dia))+
  geom_bar()

#3.
ggplot(data= propina,aes( x= fct_infreq(dia),fill=dia))+
  geom_bar()

#4.
ggplot(data= propina,aes( x= fct_infreq(dia),fill=dia))+
  geom_bar()+
  coord_flip()

