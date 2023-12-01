/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
let currentInput = '';

function appendToDisplay(value) {
  currentInput += value;
  document.getElementById('display').value = currentInput;
}

function operate(operator) {
  if (currentInput !== '') {
    currentInput += operator;
    document.getElementById('display').value = currentInput;
  }
}

function clearDisplay() {
  currentInput = '';
  document.getElementById('display').value = '';
}

function calculate() {
  if (currentInput !== '') {
    let result;
    try {
      result = eval(currentInput); // Using eval to perform calculations
    } catch (error) {
      result = 'Error';
    }
    document.getElementById('display').value = result;
    currentInput = '';
  }
}

function deleteLastCharacter() {
  currentInput = currentInput.slice(0, -1); // Remove the last character from the string
  document.getElementById('display').value = currentInput;
}

