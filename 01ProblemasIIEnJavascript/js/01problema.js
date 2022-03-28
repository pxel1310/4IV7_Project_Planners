// 01 Problema
function validarn_problema01(e) {
  var teclado = document.formulario01 ? e.keyCode : e.which;
  if (teclado == 8) return true;

  var patron = /[0-9\d.-]/;

  var prueba = String.fromCharCode(teclado);
  return patron.test(prueba);
}

function borrar_problema01() {
  document.formulario01.p1_input_1.value = "";
  document.formulario01.p1_input_2.value = "";
  document.formulario01.querySelector("#p1_output").textContent =
    "Esperando datos...";
}

function problema01() {
  var x = parseFloat(document.formulario01.querySelector("#p1_input_1").value);
  var y = parseFloat(document.formulario01.querySelector("#p1_input_2").value);

  if (x == y) {
    // Es el Producto de dos numero similares, lo representare como x al cuadrado.
    function iguales() {
      return (out = Math.pow(x, 2));
    }
    document.formulario01.querySelector("#p1_output").textContent =
      "Los números son iguales." +
      "\n" +
      x +
      " elevado al cuadrado es: " +
      iguales() +
      ".";
  } else if (x > y) {
    // La Diferencia de un numero mayor con un numero menor respecto al otro.
    function diferencia() {
      return (out = x - y);
    }
    document.formulario01.querySelector("#p1_output").textContent =
      "El Primer número es mayor que el Segundo número." +
      "\n" +
      "La Resta " +
      x +
      " y " +
      y +
      " es igual a " +
      diferencia() +
      ".";
  } else if (x < y) {
    // La Adición de un numero menor con un numero mayor respecto al otro.
    function adición() {
      return (out = x + y);
    }
    document.formulario01.querySelector("#p1_output").textContent =
      "El Primer número es menor que el Segundo número." +
      "\n" +
      "La Suma " +
      x +
      " y " +
      y +
      " es igual a " +
      adición() +
      ".";
  }
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
