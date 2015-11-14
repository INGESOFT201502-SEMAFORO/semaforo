import java.io.BufferedReader
import java.io.FileReader
import semaforo.Guia
import semaforo.ValorModelo

class BootStrap {

    def init = { servletContext ->
		try {
			def br = new BufferedReader(new FileReader("guias/guia_noviembre_2015.csv"))
			def line
			def cont = 0
			while ((line = br.readLine()) != null) {
				cont++
				if(cont % 1000 == 0){
					println cont
				}
				if(cont == 1) continue


				line = line.replaceAll('"','')
				def partes = line.split(',')
				
				def guia = new Guia(
					codigo: partes[3],
					tipo_vehiculo: partes[2],
					marca: partes[1],
					referencia1: partes[5],
					referencia2: partes[6],
					referencia3: partes[7]
				).save(failOnError : true)

				def ano = 1970;
				def columna = 11;
				while(ano <= 2016){
					if(partes[columna] != "0"){
						guia.addToValores(new ValorModelo(
							modelo : ano,
							valor : Double.parseDouble(partes[columna] + "000")
						).save(failOnError : true))
					}
					ano++;
					columna++;
				}

				guia.save(failOnError : true)

			}
		}catch(Exception e){
			println e
		}
    }
    def destroy = {
    }
}
