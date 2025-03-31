object galvan {
    //uno de los empleados
  var sueldo = 15000
  method sueldo(_sueldo) {
    sueldo=_sueldo
  }
  method sueldo() {
    //metodo para guardar el sueldo
    return sueldo
  }
  method recibirSueldo(_sueldo) {
    
  }
}
object baigorria  {
  var costoEmpanada = 15
  var empanadasVendidas = 0
  var totalCobrado = 0
  //metodos de empanada
  method empanadasVendidas(){
    return empanadasVendidas
  }
  method empanadasVendidas(_empanadasVendidas){
    empanadasVendidas = _empanadasVendidas
  }
  method vender(empanadas){
    empanadasVendidas = empanadasVendidas + empanadas
  }
   method vender(){
    empanadasVendidas = empanadasVendidas + 1
  } 
  //metodos costoEmpanada
  method costoEmpanada(){
    return costoEmpanada
  }
  method costoEmpanada(_costoEmpanada){
    costoEmpanada = _costoEmpanada
  }
  //metodo sueldo
  method sueldo(){
    return costoEmpanada * empanadasVendidas
  }
  method recibirSueldo(_sueldo){
    totalCobrado = totalCobrado + _sueldo
    empanadasVendidas = 0
  }
  method totalCobrado() {
    return totalCobrado
  }
  
}
object gimenez{
  var fondo = 300000
  //metodos de fondos
  method fondo(){
    return fondo
  }
  method fondo(_fondo){
    fondo = _fondo
  }

  //metodo de pago
  method pagarSueldo (empleado){
    fondo = fondo - empleado.sueldo()
    empleado.recibirSueldo(empleado.sueldo())
  }
}