class	Alumno

		data.each do |linea|
		arr_linea = linea.chomp.split(', ')
		cont_inasistencias = 0
		arr_linea.each do |elemento|
			cont_inasistencias += 1 if elemento == "A"
		end

		def initialize(nota1, nota2, nota3)
			@nota1 = nota1
			@nota2 = nota2
			@nota3 = nota3
			@inasistencias = cont_inasistencias
		end

		def promedio
			(@nota1.to_i + @nota2.to_i + @nota3.to_i)/3
		end

	end


	class	Alumno

		data.each do |linea|
		arr_linea = linea.chomp.split(', ')
		cont_inasistencias = 0
		arr_linea.each do |elemento|
			cont_inasistencias += 1 if elemento == "A"
		end

		def initialize(alumno, nota1, nota2, nota3)
			@nota1 = nota1
			@nota2 = nota2
			@nota3 = nota3
			@inasistencias = cont_inasistencias
		end

	end