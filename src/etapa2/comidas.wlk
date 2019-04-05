object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaQueOtorga() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() { return 9 }
}

// despues, agregar mijo y canelones
object mijo {
	var estaMojado = false
	method mojarse(){
		estaMojado = true
	}
	method secarse(){
		estaMojado = false
	}
	method energiaPorGramo(){
		if (estaMojado){
			return 15
		}
		else {
			return 20
		}
	}
}


object canelones {
	var tieneQueso = false
	var tieneSalsa = false

	
	method sinNada(){
		tieneQueso = false
		tieneSalsa = false
	}
	method soloQueso(){
		tieneQueso = true
		tieneSalsa = false
	}
	method soloSalsa(){
		tieneQueso = false
		tieneSalsa = true
	}
	method completo(){
		tieneQueso = true
		tieneSalsa = true
	}
	
	method energiaPorGramo(){
		var valor = 20
		
		if (tieneSalsa){ valor = valor + 5}
		if (tieneQueso){ valor = valor + 7}
		
		return valor
	}
}