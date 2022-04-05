// 02 Problema
function validarn_problema02(e) {
  var teclado = document.formulario02 ? e.keyCode : e.which;
  if (teclado == 8) return true;

  var patron = /[0-9\d.-]/;

  var prueba = String.fromCharCode(teclado);
  return patron.test(prueba);
}

function borrar_problema02() {
  document.formulario02.p2_input_1.value = "";
  document.formulario02.p2_input_2.value = "";
  document.formulario02.p2_input_3.value = "";
  document.formulario02.querySelector("#p2_output").textContent =
    "Esperando datos...";
}

function problema02() {
  var x = parseFloat(document.formulario02.querySelector("#p2_input_1").value);
  var y = parseFloat(document.formulario02.querySelector("#p2_input_2").value);
  var z = parseFloat(document.formulario02.querySelector("#p2_input_3").value);

  var sms = "El número Mayor es: ";

  function comparar() {
    if (x > y) {
      if (x > z) {
        document.formulario02.querySelector("#p2_output").textContent = sms + x;
      } else {
        document.formulario02.querySelector("#p2_output").textContent = sms + z;
      }
    } else {
      if (y > z) {
        document.formulario02.querySelector("#p2_output").textContent = sms + y;
      } else {
        document.formulario02.querySelector("#p2_output").textContent = sms + z;
      }
    }
  }
  comparar();
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
