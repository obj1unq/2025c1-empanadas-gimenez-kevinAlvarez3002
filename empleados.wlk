//Escribir aqui los objetos
object galvan {
    //uno de los empleados
  var sueldo = 15.000
  method sueldo(_sueldo) {
    sueldo=_sueldo
  }
  method sueldo() {
    //metodo para guardar el sueldo
    return(sueldo)
  }
}
object baigorria  {
  var costoEmpanada = 15
  var empanadasVendidas = 0
  method empanadasVendidas(){
    return (empanadasVendidas)
  }
  method empanadasVendidas(_empanadasVendidas){
    empanadasVendidas = _empanadasVendidas
  }
  method sueldo(){
    return(self.costoEmpanada() * self.empanadasVendidas())
  }
}