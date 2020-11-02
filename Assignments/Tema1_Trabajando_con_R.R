 # Q1.Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que marcan el inicio de 2018,
 #  ¿a qué hora de qué día de qué año llegaríamos a los 250 millones de segundos?
 #  ¡Cuidado con los años bisiestos!

# Teniendo en cuenta que empezamos a contar al sonar la última de las 12 campanadas:
# Año bisiesto son los divisibles entre 4. Próximo apartir del 2018 es el 2020
sec = 250*10^6
seconds = function(sec, year=2018){
  min = sec%/%60
  sec_rest = sec%%60
  hour = min%/%60
  min_rest = min%%60
  days = hour%/%24
  hour_rest = hour%%24
  while ((days>=366 & year%%4==0) | (days>=365 & year%%4!=0)) {
    if (year%%4==0) {
      year = year + 1
      days = days - 366
    
    } else {
      
     year = year+1
      days = days -365
    }}
  print(sprintf('Los 250M de segundos trás el inicio del 2018 se cumplen el día %i a las %i:%i y %i segundos del año %i', 
              days, hour_rest, min_rest, sec_rest, year))
}

# Q2.Cread una función que os resuelva una ecuación de primer grado (de la forma Ax+B=0). 
#   Es decir, vosotros tendréis que introducir como parámetros los coeficientes (en orden) y 
#   la función os tiene que devolver la solución. Por ejemplo, si la ecuación es 2x+4=0,
#   vuestra funciónos tendría que devolver -2.

eq_primer_grado <- function(a,b) {
  x <- -b/a
  return (x)
}

# Q3.Dad una expresión para calcular 3e-?? y a continuación, dad el resultado que habéis obtenido con 
#   R redondeado a 3 cifras decimales.
#   Dad el módulo del número complejo (2+3i)^2/(5+8i) redondeado a 3 cifras decimales.


