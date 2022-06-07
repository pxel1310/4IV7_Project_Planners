/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let email = document.getElementById("email")
let password = document.getElementById("password")
let verifyPassword = document.getElementById("verifyPassword")
let submitBtn = document.getElementById("submitBtn")
let emailErrorMsg = document.getElementById('emailErrorMsg')
let passwordErrorMsg = document.getElementById('passwordErrorMsg')

function displayErrorMsg(type, msg) {
  if (type == "email") {
    emailErrorMsg.style.display = "block"
    emailErrorMsg.innerHTML = msg
    submitBtn.disabled = true
  } else {
    passwordErrorMsg.style.display = "block"
    passwordErrorMsg.innerHTML = msg
    submitBtn.disabled = true
  }
}

function hideErrorMsg(type) {
  if (type == "email") {
    emailErrorMsg.style.display = "none"
    emailErrorMsg.innerHTML = ""
    submitBtn.disabled = true
    if (passwordErrorMsg.innerHTML == "")
      submitBtn.disabled = false
  } else {
    passwordErrorMsg.style.display = "none"
    passwordErrorMsg.innerHTML = ""
    if (emailErrorMsg.innerHTML == "")
      submitBtn.disabled = false
  }
}

// Validate password upon change
password.addEventListener("change", function() {

  // If password has no value, then it won't be changed and no error will be displayed
  if (password.value.length == 0 && verifyPassword.value.length == 0) hideErrorMsg("password")

  // If password has a value, then it will be checked. In this case the passwords don't match
  else if (password.value !== verifyPassword.value) displayErrorMsg("password", "Passwords do not match")

  // When the passwords match, we check the length
  else {
    // Check if the password has 8 characters or more
    if (password.value.length >= 8)
      hideErrorMsg("password")
    else
      displayErrorMsg("password", "Password must be at least 8 characters long")
  }
})

verifyPassword.addEventListener("change", function() {
  if (password.value !== verifyPassword.value)
    displayErrorMsg("password", "Passwords do not match")
  else {
    // Check if the password has 8 characters or more
    if (password.value.length >= 8)
      hideErrorMsg("password")
    else
      displayErrorMsg("password", "Password must be at least 8 characters long")
  }
})

// Validate email upon change
email.addEventListener("change", function() {
  // Check if the email is valid using a regular expression (string@string.string)
  if (email.value.match(/^[^@]+@[^@]+\.[^@]+$/))
    hideErrorMsg("email")
  else
    displayErrorMsg("email", "Invalid email")
});
