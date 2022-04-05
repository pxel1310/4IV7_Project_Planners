// Problema 03
function validarn_problema03(e) {
    var teclado = document.formulario01 ? e.keyCode : e.which;
    if (teclado == 8) return true;
  
    var patron = /[0-9\d.-]/;
  
    var prueba = String.fromCharCode(teclado);
    return patron.test(prueba);
  }

  function borrarp3() {
    document.formulario03.horas.value = "";
    document.formulario03.sueldo.value = "";
    document.formulario03.querySelector("#outputp3").textContent =
      "Esperando datos...";
  }
  
  function problema03() {
    var h = parseFloat(document.formulario03.querySelector("#horas").value);
    var s = parseFloat(document.formulario03.querySelector("#sueldo").value);
  
    
  
    function calcular() {
        if(h <= 40){

            pago = (h) * (s);
        }
        else{
            if(h > 40 && h <=48 ){

                pago = (h - 40) * (s * 2) + ( s * 40);
            }
            
            else {

                pago = ((h - 48) * (3 * s)) + ((s * 2) * 8) + ( s * 40);
                
            }
        }
       
        document.formulario03.querySelector("#outputp3").textContent = "La paga final es de: $" + pago

    }
    calcular();
  }
  
  document.oncopy = (event) => {
    event.preventDefault();
    event.clipboardData.setData("text/plain", "¿Porque esta copiando texto? ¯\_(ツ)_/¯ ");
  };
  
  document.oncut = (event) => {
    event.preventDefault();
    event.clipboardData.setData("text/plain", "¿Porque esta cortando texto? ¯\_(ツ)_/¯ ");
  };
  
  document.onpaste = (event) => {
    event.preventDefault();
  };
  
  document.ondrag = (event) => {
    event.preventDefault();
  };
  
  document.ondrop  = (event) => {
    event.preventDefault();
  };
  