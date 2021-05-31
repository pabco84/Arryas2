ventas = open("ventas_base.db").readlines.reject{|x| x.empty?} # Abriendo archivo y lo guardo en una variable.
ventas1 = ventas[0].split(',') # Aqui divido la cadena recibida segun el caracter ",", y se guarda en otra variable.
ventas2 = ventas1.map {|x| x.to_f} # Aqui transformo los datos a decimales, y utilizo inline (todo en una linea).
ventas2primer= ventas2[0..5]
ventas2segundo= ventas2[6..11]
resultado1 = ventas2primer.map {|x| x*1.1} 
resultadofin1 = resultado1+ventas2segundo
resultadofin1 = resultadofin1.sum.round(2)
resultado2 = ventas2segundo.map {|x| x*1.2} 
resultadofin2 = resultado2+ventas2primer
resultadofin2 = resultadofin2.sum.round(2)
output = File.open('resultados.data', 'w') #escribe el archivo
output.write(resultadofin1)
output.write("\n")
output.write(resultadofin2)

output.close
