 # Q1.Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que marcan el inicio de 2018,
 #  ¿a qué hora de qué día de qué año llegaríamos a los 250 millones de segundos?
 #  ¡Cuidado con los años bisiestos!

# A1: Teniendo en cuenta que empezamos a contar al sonar la última de las 12 campanadas:
# Año bisiesto son los divisibles entre 4. Próximo apartir del 2018 es el 2020
seconds = 250*10^6
seconds = function(sec, year=2018){
  min = sec%/%60
  sec_rest = sec%%60
  h = min%/%60
  min_rest = min%%60
  days = h%/%24
  h_rest = h%%24
  while ((days>=366 & year%%4==0) | (days>=365 & year%%4=!0) {
    if (year%%4==0) {
      year = year + 1
      days = days - 366
    
    } else {
      
     year = year+1
      days = days -365
    }}
  print(paste('Los 250M de segundos trás el inicio del 2018 se cumplen el día '))
  
}
