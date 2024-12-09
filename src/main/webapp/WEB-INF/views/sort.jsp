<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sort Array</title>
    <style>
        /* Reset and Global Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        .form-container h1 {
            font-size: 1.5rem;
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .form-group input[type="text"],
        .form-group select {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .form-group input[type="submit"],
        .form-group input[type="button"] {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            color: #fff;
            background-color: #4CAF50;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-group input[type="submit"]:hover,
        .form-group input[type="button"]:hover {
            background-color: #45a049;
        }

        .sorted-array,
        .json-response {
            margin-top: 20px;
            padding: 10px;
            font-size: 0.9rem;
            background-color: #e7f3fe;
            border: 1px solid #b3d4fc;
            border-radius: 5px;
            color: #333;
            word-wrap: break-word;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#jsonButton").click(function (event) {
                event.preventDefault();
                const array = $("#array").val();
                const algorithm = $("#algorithm").val();
                $.ajax({
                    url: "${pageContext.request.contextPath}/api/sort/array",
                    method: "POST",
                    contentType: "application/json",
                    data: JSON.stringify({
                        array: array,
                        algorithm: algorithm
                    }),
                    success: function (response) {
                        $(".json-response").html(JSON.stringify(response));
                    },
                    error: function (xhr, status, error) {
                        $(".json-response").html("An error occurred: " + xhr.responseText);
                    }
                });
            });
        });
    </script>
</head>
<body>
<div class="form-container">
    <h1>Sort Array</h1>
    <form action="${pageContext.request.contextPath}/api/sort-array" method="post">
        <div class="form-group">
            <label for="array">Array (comma separated):</label>
            <input type="text" id="array" name="array" pattern="\d+(,\d+)*" required />
        </div>
        <div class="form-group">
            <label for="algorithm">Sorting Algorithm:</label>
            <select id="algorithm" name="algorithm">
                <option value="heap">Heap Sort</option>
                <option value="quick">Quick Sort</option>
                <option value="radix">Radix Sort</option>
                <option value="bucket">Bucket Sort</option>
                <option value="merge">Merge Sort</option>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" value="Sort" />
        </div>
        <div class="form-group">
            <input type="button" id="jsonButton" value="Get JSON Response" />
        </div>
    </form>
    <c:if test="${not empty sortedArray}">
        <div class="sorted-array">
            <p>Sorted Array: ${sortedArray}</p>
        </div>
    </c:if>
    <div class="json-response"></div>
</div>
</body>
</html>
