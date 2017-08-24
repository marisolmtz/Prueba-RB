file = File.open('alumnos.csv', 'r', :encoding => "UTF-8")
	data = file.readlines
	file.close

	arr_prom = []
	data.each do |linea|
		arr_linea = linea.split(', ')
		suma = arr_linea[1].to_f + arr_linea[2].to_f + arr_linea[3].to_f
		prom = suma / 3 
		arr_prom << "#{arr_linea[0]}, #{prom}"
	end

	print arr_prom
	end
end

