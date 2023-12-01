/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
let array1 = []; // First JavaScript array
        let array2 = []; // Second JavaScript array

        function addData() {
            const TaskInput = document.getElementById('TaskInput').value.trim();
            const TimeInput = document.getElementById('TimeInput').value.trim();
            
            if (TaskInput !== '' || TimeInput !== '') {
                array1.push(TaskInput);
                array2.push(TimeInput);
                displayArrays();
                document.getElementById('TaskInput').value = ''; // Clear input fields after adding
                document.getElementById('TimeInput').value = '';
            }
        }

        function displayArrays() {
            const dataArray = document.getElementById('dataArray');
            dataArray.innerHTML = '<tr><th>Task</th><th>Time</th></tr>'; // Reset the table header

            const maxLength = Math.max(array1.length, array2.length);
            for (let i = 0; i < maxLength; i++) {
                const row = dataArray.insertRow(-1);
                const cell1 = row.insertCell(0);
                const cell2 = row.insertCell(1);

                cell1.textContent = (i < array1.length) ? array1[i] : ''; // Display data from Array 1
                cell2.textContent = (i < array2.length) ? array2[i] : ''; // Display data from Array 2
            }
        }

        function resetArrays() {
            array1 = []; // Resetting the first array to an empty array
            array2 = []; // Resetting the second array to an empty array
            displayArrays(); // Display the empty arrays
        }

        // Display the arrays when the page loads
        displayArrays();

