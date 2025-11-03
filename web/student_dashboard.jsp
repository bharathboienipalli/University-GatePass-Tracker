<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <link rel="icon" type="jpeg/png" href="images/bharath-reddy-university-icon.png">
    <style>
        /* Global Styles */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        
        /* Container Styles */
        .container {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        /* Header Styles */
        .header {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        
        /* Form Styles */
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label {
            margin-bottom: 10px;
        }
        input {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #3e8e41;
        }
        
        /* Link Styles */
        a {
            text-decoration: none;
            color: #4CAF50;
        }
        a:hover {
            color: #3e8e41;
        }
        
                   /* Header Styles */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .header .logo img {
            height: 40px; 
            width: auto; 
        }
        .header nav {
            display: flex;
            gap: 20px;
        }
        .header nav a {
            color: #fff;
            text-decoration: none;
            font-size: 1em;
            transition: color 0.3s ease-in-out, transform 0.3s ease-in-out;
        }
        .header nav a:hover {
            color: #e0e0e0;
            transform: scale(1.1);
        }
        /* Footer Styles */
        .footer {
            background-color: #4CAF50;
            color: #fff;
            text-align: center;
            padding: 10px 20px;
            position: relative;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    
    <!-- Header -->
    <div class="header">
        <div class="logo">
            <img src="images/bharath-reddy-university-icon.png" alt="Logo" style="height: 80px; width: 180px;">
        </div>
        <nav>
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="logout.jsp" class="logout-button">Logout</a>
        </nav>
    </div>
    
    <div class="container">
        <div class="header">
            <h1>Student Dashboard</h1>
            <p>Welcome <%=username%></p>
        </div>
        <form action="apply_gatepass.jsp" method="post">
            <h2>Apply for Gatepass</h2>
            <label for="reason">Reason:</label>
            <input type="text" id="reason" name="reason" required>
            <br>
            <label for="entryDate">Entry Date:</label>
            <input type="date" id="entryDate" name="entryDate" required min="<%= String.format("%tF", new java.util.Date()) %>">
            <br>
            <label for="entryTime">Entry Time:</label>
            <input type="time" id="entryTime" name="entryTime" required>
            <br>
            <label for="exitDate">Exit Date:</label>
            <input type="date" id="exitDate" name="exitDate" required min="<%= String.format("%tF", new java.util.Date()) %>">
            <br>
            <label for="exitTime">Exit Time:</label>
            <input type="time" id="exitTime" name="exitTime" required>
            <br>
            <button type="submit">Apply</button>
        </form>
        <br>
        <a href="view_gatepass_status.jsp">View Gatepass Status</a>
    </div>
            
            <!-- Footer -->
    <div class="footer">
        &copy; 2025 GatePass Tracker
    </div> 
</body>
</html>
