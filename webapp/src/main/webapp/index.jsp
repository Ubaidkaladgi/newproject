<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .calculator {
            width: 200px;
            margin: 50px auto;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
        }
        .calculator input[type="text"] {
            width: 100%;
            margin-bottom: 10px;
            padding: 5px;
            font-size: 20px;
        }
        .calculator button {
            width: 45px;
            height: 45px;
            margin: 5px;
            font-size: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="calculator">
    <input type="text" id="result" disabled>
    <button onclick="clearResult()">C</button>
    <button onclick="appendToResult('9')">9</button>
    <button onclick="appendToResult('8')">8</button>
    <button onclick="appendToResult('7')">7</button>
    <button onclick="appendToResult('6')">6</button>
    <button onclick="appendToResult('5')">5</button>
    <button onclick="appendToResult('4')">4</button>
    <button onclick="appendToResult('3')">3</button>
    <button onclick="appendToResult('2')">2</button>
    <button onclick="appendToResult('1')">1</button>
    <button onclick="appendToResult('0')">7</button>
    <button onclick="appendToResult('+')">+</button>
    <button onclick="appendToResult('*')">*</button>
    <button onclick="appendToResult('-')">-</button>
    <button onclick="appendToResult('.')">.</button>
    <button onclick="calculateResult()">=</button>
    <button onclick="appendToResult('/')">/</button>
</div>

<script>
    function appendToResult(value) {
        document.getElementById("result").value += value;
    }

    function calculateResult() {
        var result = document.getElementById("result");
        try {
            result.value = eval(result.value);
        } catch (e) {
            result.value = 'Error';
        }
    }

    function clearResult() {
        document.getElementById("result").value = '';
    }
</script>

</body>
</html>
