/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

var eye = document.getElementById('eye');
var input = document.getElementById('inputPassword');
eye.addEventListener("click", function() {
  if (input.type === "password") {
    input.type = "text";
    eye.style.opacity = 0.8;
  } else {
    input.type = "password";
    eye.style.opacity = 0.2;

  }
})
