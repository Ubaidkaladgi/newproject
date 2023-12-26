<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Digital Clock</title>

    <script>
        function updateClock() {
            var now = new Date();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();

            // Add leading zero if the number is less than 10
            hours = (hours < 10) ? '0' + hours : hours;
            minutes = (minutes < 10) ? '0' + minutes : minutes;
            seconds = (seconds < 10) ? '0' + seconds : seconds;

            var timeString = hours + ':' + minutes + ':' + seconds;
            document.getElementById('clock').innerText = timeString;

            // Update every second
            setTimeout(updateClock, 1000);
        }

        // Initialize the clock when the page is loaded
        window.onload = function () {
            updateClock();
        };
    </script>
</head>
<body>

    <header>
        <h1>Digital Clock</h1>
    </header>

    <main>
        <section id="clock-section">
            <h2>Current Time</h2>
            <p id="clock"></p>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Digital Clock. All rights reserved.</p>
    </footer>

</body>
</html>
