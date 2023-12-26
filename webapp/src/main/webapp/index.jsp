<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple To-Do List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        #todo-container {
            max-width: 400px;
            margin: 0 auto;
        }

        #task-input {
            width: 70%;
            padding: 8px;
            margin-right: 10px;
        }

        #add-task-btn {
            padding: 8px;
            cursor: pointer;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin: 10px 0;
        }

        .delete-btn {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <div id="todo-container">
        <h2>Simple To-Do List</h2>
        <div>
            <input type="text" id="task-input" placeholder="Add a new task">
            <button id="add-task-btn" onclick="addTask()">Add Task</button>
        </div>
        <ul id="task-list"></ul>
    </div>

    <script>
        function addTask() {
            var taskInput = document.getElementById('task-input');
            var taskList = document.getElementById('task-list');

            if (taskInput.value.trim() !== '') {
                var newTask = document.createElement('li');
                newTask.innerHTML = taskInput.value + ' <button class="delete-btn" onclick="deleteTask(this)">Delete</button>';
                taskList.appendChild(newTask);
                taskInput.value = '';
            }
        }

        function deleteTask(btn) {
            var taskList = document.getElementById('task-list');
            var listItem = btn.parentNode;
            taskList.removeChild(listItem);
        }
    </script>

</body>
</html>
