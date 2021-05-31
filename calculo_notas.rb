input = open("notas.data").readlines.reject{|x| x.empty?} #lee eñ archivo
notas = input.map {|x| x.split(',')}  #escribe 

# n = notas.count
# filtrado = []
# n.times do |i| 
#     filtrado = notas.select{ |x| x.class == Integer}
# end

def nota_mas_alta(notas) 
notas = notas.map {|x| x.to_i}
    notas=notas.max
 end
print nota_mas_alta(notas[4])


# input.each do |i|    
#     output.puts(i.to_i) if i.to_i
# end
# notas2 = notas.map{ |x| x.to_i}
# print notas2



# print notas
