 # Q1.Si hubi�ramos empezado a contar segundos a partir de las 12 campanadas que marcan el inicio de 2018,
 #  �a qu� hora de qu� d�a de qu� a�o llegar�amos a los 250 millones de segundos?
 #  �Cuidado con los a�os bisiestos!

# Teniendo en cuenta que empezamos a contar al sonar la �ltima de las 12 campanadas:
# A�o bisiesto son los divisibles entre 4. Pr�ximo apartir del 2018 es el 2020
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
  print(sprintf('Los 250M de segundos tr�s el inicio del 2018 se cumplen el d�a %i a las %i:%i y %i segundos del a�o %i', 
              days, hour_rest, min_rest, sec_rest, year))
}

# Q2.Cread una funci�n que os resuelva una ecuaci�n de primer grado (de la forma Ax+B=0). 
#   Es decir, vosotros tendr�is que introducir como par�metros los coeficientes (en orden) y 
#   la funci�n os tiene que devolver la soluci�n. Por ejemplo, si la ecuaci�n es 2x+4=0,
#   vuestra funci�nos tendr�a que devolver -2.

eq_primer_grado <- function(a,b) {
  x <- -b/a
  return (x)
}

# Q3.Dad una expresi�n para calcular 3e-?? y a continuaci�n, dad el resultado que hab�is obtenido con 
#   R redondeado a 3 cifras decimales.
#   Dad el m�dulo del n�mero complejo (2+3i)^2/(5+8i) redondeado a 3 cifras decimales.


