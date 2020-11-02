#Assignment Tema 4. Introducción a la visualización gráfica con R.

# Q1. Con una sola instrucción, dibujad el gráfico de la función
# y=x^2−3x+30 entre −15 y 15. De título, poned “Una parábola”. 
# De etiquetas, en el eje 0X poned, en formato matemático, "x"; 
# y en el eje 0Y, introducid $y=x^2−3x+30$, también en formato matemático.
# Tenéis que utilizar la función curve()

f <- function(x){x^2-3*x+30}
x1 = c(-15:15)
x = x1
plot(x,f(x), type='n',xlab=expression(x), ylab=expression(y=x^2-3*x+30), main='Una parábola')
curve(f(x), add=TRUE, col='red')


# Q2. Considerando lo que habéis obtenido en el ejercicio anterior y siendo
# y = f(x) = x^2−3x+30 e I = [-15:15], si en vez de utilizar la función curve(),
# utilizamos la función plot(), ¿es correcta la sentencia plot(f(I)) para representar
# la curva f en el intervalo I? En otras palabras, dan ambas sentencias la
# misma gráfica? Obviamente, en la sentencia plot(f(I)) se han omitido
# el resto de parámetros requeridos en el ejercicio anterior porque no
# influyen para nada en la curva. Tanto si la respuesta es afirmativa
# como negativa, cread la función f en R y argumentad vuestra respuesta,
# considerando todos los parámetros requeridos (título y etiquetas de ambos ejes).
f <- function(x){x^2-3*x+30}
I = c(-15:15)
plot(f(I),xlab='x', ylab='y=x^2-3x+30', main='Una parábola')

#No es correcto ya que no representa la curva en el intervalo I.

# Q3. Dibuja un gráfico semilogarítmico de la función y = 5\cdot 2^x 
# entre -10 y 25. Utilizad la función curve().
# Mostrad solo la etiqueta del eje 0Y, que ponga "y = 5\cdot 2^x" en 
# formato matemático.

f3 <- function(x){5*2^x}
x3 = c(-10:25)
x = x3
plot(x3, f3(x),type='n',log='y', xlab='', ylab=expression(y=5%.%2^x))
curve(f3(x), add=TRUE)

# Q4. Dibuja el gráfico de la función y_1 = 3x utilizando la función curve().
# Añade la curva y_2=-3x, entre -10 y 20.
# El gráfico no debe mostrar ninguna etiqueta. 
# La primera curva debe ser de color azul y la segunda, de color verde.
# Ponedle de título "2 rectas" y de subtítulo "Dos rectas con pendiente opuesto".
# Añadid al gráfico un recuadro (con la esquina superior izquierda en el punto (13,10))
# que indique que la función 3x es la azul y la -3x verde.

f4_1 <- function(x){3*x}
f4_2 = function(x){-3*x}
x4 = c(-10:20)
x = x4
plot(f4_1, xlim=c(0,20), ylim=c(-60,60), col='blue', main='2 rectas', sub='Dos rectas con pendiente opuesto')
curve(f4_2(x), add=TRUE, col='green')
legend(x=13,y=10,
       xjust=0, yjust=1, #para ajustar las coordenadas x,y anteriores a la esquina superior ezquierda de la legend
       legend=c('3x', '-3x'),
       col=c('blue', 'green'),
       lty=1, lwd=1)

# Q5. Dad la instrucción que añada a un gráfico anterior la recta horizontal 
# y = 0 de color rojo con un grosor de 5 puntos.

abline(h=0, col='red', lwd=5)

# Q6. Dad la instrucción que añada a un gráfico anterior la recta
# y = 2x+7 de color azul con un grosor de 2 puntos.

lines(x, 2*x+7, col='darkblue', lwd=2)
abline(7,2, col= "dodgerblue", lwd = 2) #it would be the same


     