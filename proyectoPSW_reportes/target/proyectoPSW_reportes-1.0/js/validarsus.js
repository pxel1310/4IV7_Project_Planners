/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function validarforsus(){

    var sus = document.getElementById("usu").value; 
    var nom = document.getElementById("nom_usu").value;
    var app = document.getElementById("app_usu").value;
    var apm = document.getElementById("apm_usu").value;
    var pass = document.getElementById("inputPassword").value;
    var sex = document.getElementById("id_sex").value;
    var bol = document.getElementById("bol_usu").value;
         
    if ((sus == "") || (nom == "") || (app == "") || (apm == "") || (pass == "") || (sex == "") || (bol == "")) {  //COMPRUEBA CAMPOS VACIOS
        alert("Los campos no pueden quedar vacios");
        return false;
    }
    
    }

    function validarlogin(){

        var sus = document.getElementById("usu").value; 
        var pass = document.getElementById("inputPassword").value;                       
        
        if ((sus == "") || (pass == "")) {  //COMPRUEBA CAMPOS VACIOS
            alert("Los campos no pueden quedar vacios");
            return false;
        }
        
}

    
function validarboleta() {
        usuario = document.getElementById('bol_usu').value;
    
        patron = /\d{10}/;
        if(patron.test(usuario)){
            return false;
        }else{
            alert("La boleta debe tener 10 digitos")
        return false;
    }
}

function validarn(e) {
    var tecla = document.all ? (tecla = e.keyCode) : (tecla = e.which);
    return (tecla > 47 && tecla < 58) || tecla == 8;
}

function validarnl(e) {
    var tecla = document.all ? (tecla = e.keyCode) : (tecla = e.which);
    var especiales = [8, 32, 13]; /*back, space, enter */

    for (var i in especiales) {
        if (tecla == especiales[i]) {
            return true; /*break; */
        }
    }
    return (
        (tecla > 96 && tecla < 123) || (tecla > 64 && tecla < 91) || tecla == 8
    );
}

function soloNumeros(e) {
    var key = window.event ? e.which : e.keyCode;
    if (key < 48 || key > 57) {
        e.preventDefault();
    }
}

document.oncopy = (event) => {
    event.preventDefault();
};

document.oncut = (event) => {
    event.preventDefault();
};

document.onpaste = (event) => {
    event.preventDefault();
};

document.ondrag = (event) => {
    event.preventDefault();
};

document.ondrop = (event) => {
    event.preventDefault();
};
