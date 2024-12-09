<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sorted Array</title>
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        .container {
            background-color: #ffffff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        h2 {
            color: #444;
            margin-bottom: 15px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin-bottom: 30px;
        }

        ul li {
            margin: 5px 0;
        }

        ul li a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        ul li a:hover {
            text-decoration: underline;
        }

        .sorted-array {
            background-color: #e7f3fe;
            border: 1px solid #b3d4fc;
            padding: 15px;
            border-radius: 5px;
            font-size: 1rem;
            color: #333;
            margin-top: 20px;
            word-wrap: break-word;
        }

        .sorted-array span {
            margin-right: 10px;
            font-weight: bold;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 25px;
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .back-link:hover {
            background-color: #45a049;
        }

        /* Responsive design */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }
            h1 {
                font-size: 1.8rem;
            }
            .sorted-array {
                padding: 10px;
            }
            .back-link {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Sorted Array</h1>

        <!-- Links Section (commented out, can be enabled if needed) -->
        <ul>
            <%-- <c:forEach var="link" items="${response.links}"> --%>
            <%--     <li><a href="${link.href}">${link.rel}</a></li> --%>
            <%-- </c:forEach> --%>
        </ul>

        <!-- Sorted Array Section -->
        <h2>Array Sorted Using Selected Algorithm</h2>
        <div class="sorted-array">
            [
            <c:forEach var="num" items="${response}">
                <span>${num}</span>
            </c:forEach>
            ]
        </div>

        <!-- Back Link -->
        <a href="javascript:void(0);" class="back-link" onclick="window.history.back()">Sort Another Array</a>
    </div>
</body>
</html>
