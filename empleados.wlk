object galvan {
  //variables
  var sueldo = 15000
  var deuda = 0
  var dinero = 0
  
  //metodos de sueldo
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  
  method sueldo() = sueldo
  
  //setters extra
  method deuda() = deuda
  
  method dinero() = dinero
  
  method recibirSueldo() {
    dinero += sueldo
    self.corregirFinanzas()
  }
  
  method gastar(cantidad) {
    dinero -= cantidad
    self.corregirFinanzas()
  }
  
  method corregirFinanzas() {
    if (deuda <= dinero) {
      dinero -= deuda
      deuda = 0
    } else {
      deuda -= dinero
      dinero = 0
    }
  }
}

object baigorria {
  var costoEmpanada = 15
  var empanadasVendidas = 0
  var totalCobrado = 0
  
  //metodos de empanada
  method empanadasVendidas() = empanadasVendidas
  
  method empanadasVendidas(_empanadasVendidas) {
    empanadasVendidas = _empanadasVendidas
  }
  
  method vender(empanadas) {
    empanadasVendidas += empanadas
  }
  
  method vender() {
    empanadasVendidas += 1
  }
  
  //metodos costoEmpanada
  method costoEmpanada() = costoEmpanada
  
  method costoEmpanada(_costoEmpanada) {
    costoEmpanada = _costoEmpanada
  }
  
  //metodo sueldo
  method sueldo() = costoEmpanada * empanadasVendidas
  
  method recibirSueldo() {
    totalCobrado += self.sueldo()
    empanadasVendidas = 0
  }
  
  method totalCobrado() = totalCobrado
}

object gimenez {
  var fondo = 300000
  
  //metodos de fondos
  method fondo() = fondo
  
  method fondo(_fondo) {
    fondo = _fondo
  }
  
  //metodo de pago
  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.recibirSueldo()
  }
}