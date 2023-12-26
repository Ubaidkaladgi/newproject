<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Digital Website</title>
</head>
<body>

    <header>
        <h1>Digital Website</h1>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section id="welcome-section">
            <h2>Welcome to our Digital Website!</h2>
            <p>This is a simple example of a digital website using JSP.</p>
        </section>

        <section id="user-section">
            <h2>User Information</h2>

            <form method="post" action="processForm.jsp">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <input type="submit" value="Submit">
            </form>
        </section>

        <section id="display-section">
            <h2>Submitted Information</h2>

            <%
                String submittedName = request.getParameter("name");
                String submittedEmail = request.getParameter("email");

                if (submittedName != null && submittedEmail != null) {
            %>
                <p>Name: <%= submittedName %></p>
                <p>Email: <%= submittedEmail %></p>
            <%
                }
            %>
        </section>
    </main>

    <footer>
        <p>&copy; 2023 Digital Website. All rights reserved.</p>
    </footer>

</body>  
</html>
