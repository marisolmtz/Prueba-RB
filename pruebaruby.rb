continuar = true

while(continuar)
	puts 'Menú de opciones'
	puts ''
	puts '1 - Salir'
	puts '2 - Contar alumnos'
	puts '3 - Promedios'
	puts '4 - Crear archivo'
	puts '5 - Alumnos aprobados'
	puts ''
	puts 'Ingrese una opcion:'

	opcion = gets.chomp.to_i


if opcion == 1
	puts 'Hasta luego!'
	continuar = false
end

if opcion == 2
	file = file.open('alumnos.csv', 'r', :encoding => "UTF-8")
	content = file.readlines
		def contar_lineas
			lines = File.foreach(file).count
		end

	puts "Hay #{contar_lineas} alumnos en la clase"
end

if opcion == 3

	file = File.open('alumnos.csv', 'r', :encoding => "UTF-8")
	data = file.readlines
	file.close

	arr_prom = []
	data.each do |linea|
		arr_linea = linea.split(', ')
		suma = arr_linea[1].to_f + arr_linea[2].to_f + arr_linea[3].to_f
		prom = suma / 3 
		arr_prom << "#{arr_linea[0]}, #{prom}"

	print arr_prom
	end
end


if opcion == 4
	file = File.open('promedios.txt', 'w')
	arr_prom.each do |alumno| 
		file.puts alumno
	file.close
	end
	puts "Se ha creado el archivo con exito."
end

if opcion == 5
	file = File.open('alumnos.csv', 'r')
	content = file.readlines
	file.close

	def ver_aprobados(promedio, nota_aprobacion=7)
		promedio.to_f >= nota_aprobacion
	end

	content.each do |alumno|
		arr_alumno = alumno.chomp.split(', ')

			if ver_aprobados(arr_alumno[1])
				puts "El alumno #{arr_alumno[0]} ha aprobado"
			else
				puts "El alumno #{arr_alumno[0]} ha reprobado"
			end
		arr_alumno[0]
		arr_alumno[1]
	end
end

if opcion < 1 || opcion > 5 || opcion.to_i == 0
	puts "Opcion inválida. Intente nuvamente."	
end

end

