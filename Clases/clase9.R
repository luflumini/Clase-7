
library(readxl)
propinas <- read_excel("Datos/propina.xlsx")
ggplot(data = propinas, aes(x = total, y = propina,
                            colour = fuma)) +
  geom_point()

#Cambio los límites del eje x y valores que se incluyen

ggplot(data = propinas, aes(x = total, y = propina,
                            colour = fuma)) +
  geom_point() +
  scale_x_continuous(limits = c(-10, 60),
                     breaks = seq(-10, 60, 5) )


#Este código

ggplot() +
  layer(
    data = propinas, mapping = aes(x = total, y = propina),
    geom = "point"
    , stat = "identity"
    , position = "identity"
  ) +
  scale_x_continuous() +
  scale_y_continuous() +
  coord_cartesian()

 #Es equivalente a este otro
ggplot() +
  geom_point(data = propinas, aes(x = total, y = propina))

#Para poner varios gráficos en una misma visualización se hace asi

ggplot() +
  geom_point(data = propinas, aes(x = total, y = propina)) +
  geom_point(data = data.frame(x = 30, y = 6), aes(x, y),
             color = "red"
             , size = 10)


#Varios conjuntos de datos juntos

p1 <- ggplot() +
  layer(
    data = propinas, mapping = aes(x = total, y = propina),
    geom = "point"
    , stat = "identity"
    , position = "identity"
  ) +
  scale_x_continuous() +
  scale_y_continuous() +
  coord_cartesian()
p1 +
  layer(data = data.frame(x = 30, y = 6),
        mapping = aes(x = x, y = y, color = I("red"),
                      size = I(10)), geom = 'point'
        ,
        stat = 'identity'
        , position ='identity') +
  scale_x_continuous() +
  scale_y_continuous() +
  coord_cartesian()


#Si pongo los datos al inicio ggplot(data = propina) esos datos son
# usados en todas las capas
#Si tengo una única capa la forma de especificar los aes no hace la
#diferencia pero si agrego capas hay diferencias según en que capa
#especifico el aes



ggplot(propinas, aes(x = total, y = propina)) +
  geom_point() + theme(aspect.ratio = 1) +
  geom_smooth() +
  facet_wrap( ~fuma)

#El area sombreada es un intervalo del area de confianza

#Incluir labs por capa

ggplot(data = propinas, aes(x = total, y = propina, colour = sexo))+
  geom_point() + theme(aspect.ratio = 1) +
  scale_x_continuous(name ="Total de la cuenta") +
  scale_y_continuous(name = "Propina") +
  scale_color_discrete(name = "Sexo")


#Cambiar de color manual

ggplot(data = propinas, aes(x = total, y = propina, color = sexo)) +
  geom_point() + theme(aspect.ratio = 1) +
  labs(x = "Total de la cuenta"
       , y = "Propina"
       , color = "Sexo") +
  scale_color_manual(values=c("#ffb554"
                              ,
                              "#6cc0a1"))
#Cambiar color brewer

ggplot(data = propinas, aes(x = total, y = propina, color = sexo)) +
  geom_point() + theme(aspect.ratio = 1) +
  labs(x = "Total de la cuenta"
       , y = "Propina"
       , color = "Sexo") +
  scale_colour_brewer(palette = "Dark2")

#Cambiar fill

ggplot(data = propinas, aes(x = sexo, fill = sexo)) +
  labs(x = "Sexo"
       , y = "Cantidad"
       , color = "Sexo") +
  geom_bar() + scale_fill_manual(values=c("#ffb554"
                                          ,
                                          "#6cc0a1"))
#theme en un gráfico permite controlar los elementos que no son datos en
#el mismo.
#Ayuda a hacer tu gráfico estéticamente como lo querés no afecta el mapeo
#de datos.
#theme te da control sobre las fuente, el fondo, ticks, etc.

ggplot(data = propina, aes(x = sexo, fill = sexo)) +
  geom_bar() + labs(x = "Sexo"
                    , y = "Cantidad"
                    , fill = "Sexo") +
  theme(legend.position = "top"
        ,
        axis.title = element_text(size = 20),
        legend.title = element_text(size = 20),
        legend.text = element_text(size = 20),
        axis.text.x = element_text(size =15, color = "grey"),
        axis.text.y = element_text(size =15, color = 'grey'))

#Para ver paletas de colores entrar en colorbrewer2 en google

