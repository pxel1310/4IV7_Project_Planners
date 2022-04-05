// Problema 04

function validarn_problema04(e) {
    var teclado = document.formulario01 ? e.keyCode : e.which;
    if (teclado == 8) return true;
  
    var patron = /[0-9\d.-]/;
  
    var prueba = String.fromCharCode(teclado);
    return patron.test(prueba);
}

function borrar_problema04() {
    document.formulario04.p4_input_1.value = "";
    document.formulario04.p4_input_2.value = "";
    document.formulario04.querySelector("#p4_output").textContent =
      "Esperando datos...";
}

function problema04(){
    var antiguedad = parseFloat(document.formulario04.querySelector("#p4_input_1").value);
    var salario = parseFloat(document.formulario04.querySelector("#p4_input_2").value);

    if(antiguedad < 1){
        function utilidad1(){
            return (out = 0.05*salario);
        }
    document.formulario04.querySelector("#p4_output").textContent =
        "Valor de las utilidades: " + "\n" + utilidad1() + ".";

    }else if(antiguedad >= 1 && antiguedad < 2){
        function utilidad2(){
            return (out = 0.07*salario);
        }
    document.formulario04.querySelector('#p4_output').textContent =
        "Valor de las utilidades: " + "\n" + utilidad2() + ".";    

    }else if(antiguedad >= 2 && antiguedad < 5){
        function utilidad3(){
            return (out = 0.1*salario);
        }
    document.formulario04.querySelector('#p4_output').textContent =
        "Valor de las utilidades: " + "\n" + utilidad3() + ".";  

    }else if(antiguedad >= 5 && antiguedad < 10){
        function utilidad4(){
            return (out = 0.15*salario);
        }
    document.formulario04.querySelector('#p4_output').textContent =
        "Valor de las utilidades: " + "\n" + utilidad4() + ".";  

    }else if(antiguedad > 10){
        function utilidad5(){
            return (out = 0.2*salario)
        }
    document.formulario04.querySelector('#p4_output').textContent =
        "Valor de las utilidades: " + "\n" + utilidad5() + ".";    
    }
}

document.oncopy = (event) => {
    event.preventDefault();
    event.clipboardData.setData("text/plain", "No puede copiar texto");
  };
  
  document.oncut = (event) => {
    event.preventDefault();
    event.clipboardData.setData("text/plain", "No puede cortar texto");
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
