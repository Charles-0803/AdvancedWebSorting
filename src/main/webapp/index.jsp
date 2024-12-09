<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sort Array</title>
    <style>
         /* Add CSS styles for history table */
                .history-container {
                    margin-top: 30px;
                }

                .history-title {
                    text-align: center;
                    font-size: 1.5rem;
                    color: #333;
                    margin-bottom: 15px;
                }

                .history-table {
                    width: 100%;
                    border-collapse: collapse;
                    margin-top: 10px;
                }

                .history-table th,
                .history-table td {
                    border: 1px solid #ddd;
                    padding: 10px;
                    text-align: center;
                }

                .history-table th {
                    background-color: #4CAF50;
                    color: white;
                }

                .history-table tr:nth-child(even) {
                    background-color: #f9f9f9;
                }

                .history-table tr:hover {
                    background-color: #f1f1f1;
                }
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f3f4f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        .form-container {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 25px;
            width: 100%;
            max-width: 500px;
            border: 1px solid #ddd;
        }

        .form-container h1 {
            text-align: center;
            color: #333;
            font-size: 2rem;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group select {
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            background: #fafafa;
            transition: all 0.3s ease;
        }

        .form-group input[type="text"]:focus,
        .form-group select:focus {
            border-color: #4CAF50;
            background: #fff;
            outline: none;
        }

        .form-group input[type="submit"] {
            width: 100%;
            padding: 14px;
            font-size: 1.1rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            color: #fff;
            background: #4CAF50;
            transition: background 0.3s ease;
        }

        .form-group input[type="submit"]:hover {
            background: #45a049;
        }

        .form-group input[type="submit"]:focus {
            outline: none;
        }

        .form-group select option {
            padding: 8px;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 0.9rem;
            color: #555;
        }

        .footer a {
            color: #4CAF50;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        /* Mobile responsiveness */
        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
                max-width: 100%;
            }

            .form-container h1 {
                font-size: 1.6rem;
                margin-bottom: 20px;
            }
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="form-container">
        <h1>Sort Your Array</h1>
        <form action="${pageContext.request.contextPath}/api/sort-array" method="post">
            <div class="form-group">
                <label for="array">Enter Array (comma separated):</label>
                <input type="text" id="array" name="array" pattern="\d+(,\d+)*" placeholder="e.g. 5,3,8,2" required />
            </div>

            <div class="form-group">
                <label for="algorithm">Select Sorting Algorithm:</label>
                <select id="algorithm" name="algorithm">
                    <option value="heap">Heap Sort</option>
                    <option value="quick">Quick Sort</option>
                    <option value="radix">Radix Sort</option>
                    <option value="bucket">Bucket Sort</option>
                    <option value="merge">Merge Sort</option>
                </select>
            </div>

            <div class="form-group">
                <input type="submit" value="Sort Array" />
            </div>
        </form>





    </div>
</body>
</html>
