<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Page</title>
</head>
<body>

    <h1>Welcome to our Shopping Page</h1>

    <ul>
        <li>
            <h2>Product 1</h2>
            <p>Description: This is the description of Product 1.</p>
            <p>Price: $20.00</p>
            <form action="addToCart.jsp" method="post">
                <input type="hidden" name="productId" value="1">
                <input type="submit" value="Add to Cart">
            </form>
        </li>

        <li>
            <h2>Product 2</h2>
            <p>Description: This is the description of Product 2.</p>
            <p>Price: $25.00</p>
            <form action="addToCart.jsp" method="post">
                <input type="hidden" name="productId" value="2">
                <input type="submit" value="Add to Cart">
            </form>
        </li>

        <!-- Add more products as needed -->

    </ul>

</body>
</html>
