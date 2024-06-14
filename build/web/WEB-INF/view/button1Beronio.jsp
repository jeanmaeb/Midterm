<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Management</title>
     <style>
        body {
          margin:0;
          padding:0;
          font-family: sans-serif;
          background-image: url(https://i.imgur.com/DTUC33H.jpg);
          background-size: cover;
          background-repeat: no-repeat; 
          background-position: center; 
          background-attachment: fixed; 
        }

        .login-box {
          position: absolute;
          top: 50%;
          left: 50%;
          width: 700px;
          padding: 40px;
          transform: translate(-50%, -50%);
          background: rgba(0,0,0,.5);
          box-sizing: border-box;
          box-shadow: 0 15px 25px rgba(0,0,0,.6);
          border-radius: 10px;
          text-align: center;
        }

        .login-box h2 {
          margin: 0 0 30px;
          padding: 0;
          color: #fff;
          text-align: center;
        }

        .login-box .user-box {
          position: relative;
        }

        .login-box .user-box input {
          width: 100%;
          padding: 10px 0;
          font-size: 16px;
          color: #fff;
          margin-bottom: 30px;
          border: none;
          border-bottom: 1px solid #fff;
          outline: none;
          background: transparent;
        }
        .login-box .user-box label {
          position: absolute;
          top:0;
          left: 0;
          padding: 10px 0;
          font-size: 16px;
          color: #fff;
          pointer-events: none;
          transition: .5s;
        }

        .login-box .user-box input:focus ~ label,
        .login-box .user-box input:valid ~ label {
          top: -20px;
          left: 0;
          color: #e73700;
          font-size: 12px;
        }

        .login-box form button {
            width: 100%;
            height: 54px;
            padding: 8px;
            font-size: 0.8rem;
            font-weight: 900;
            color: #ff4655;
            text-align: center;
            text-transform: uppercase;
            text-decoration: none;
            box-shadow: 0 0 0 1px inset rgba(236, 232, 225, 0.3);
            position: relative;
            margin: 10px 0;
            display: block;
            background: #0f1923; /* Dark background color */
            border: 1px solid #ff4655; /* Border color */
            overflow: hidden;
            transition: background-color 0.3s ease; /* Add transition for background color change */
        }

        .login-box form button:hover {
            background-color: #ff4655; /* Red background color on hover */
            color: #ece8e1; /* Text color on hover */
        }

        .login-box form button .bg {
            left: -5%;
            position: absolute;
            background: #ff4655;
            width: 0;
            height: 100%;
            z-index: -1; /* Adjust z-index */
            transition: 0.3s ease-out all;
            transform: skewX(-10deg); /* Add skew transformation */
        }

        .login-box form button .text {
            z-index: 1; /* Adjust z-index */
            position: relative;
        }

        .login-box form button span.base {
            box-sizing: border-box;
            position: absolute;
            z-index: 2;
            width: 100%;
            height: 100%;
            left: 0;
            border: 1px solid #ff4655;
        }

        .login-box form button span.base:before {
            content: "";
            width: 2px;
            height: 2px;
            left: -1px;
            top: -1px;
            background: #0f1923;
            position: absolute;
            transition: 0.3s ease-out all;
        }

        .login-box form button span.text {
            z-index: 4;
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
        }

        .login-box form button span.text:after {
            content: "";
            width: 4px;
            height: 4px;
            right: 0;
            bottom: 0;
            background: #0f1923;
            position: absolute;
            transition: 0.3s ease-out all;
            z-index: 5;
        }

        .login-box form button:hover span.bg {
            width: 110%;
        }

        .login-box form button:hover span.text:after {
            background: #ece8e1;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 16px;
            color: white;
          }

          table, th, td {
            border: 1px solid black;
            padding: 8px;
          }

          th {
            background-color: black; /* Light gray background color for header */
          }
          
          .error-message {
            background-color: #e73700; /* Background color for error message */
            color: white; /* Font color for error message */
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
          }
          
          h1{
              color: white;
          }
    </style>
</head>
<body>
    <%
    // Student list
    List<String[]> studentList = (List<String[]>) session.getAttribute("studentList");
    if (studentList == null) {
        studentList = new ArrayList<>();
        session.setAttribute("studentList", studentList);
    }

    // Java code to handle form submission and perform server-side logic
    String message = "";
    String action = request.getParameter("action");
    if (action != null) {
        if (action.equals("add")) {
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String course = request.getParameter("course");
            String id = request.getParameter("id");
            // Check for missing parameters
            if (name.isEmpty() || age.isEmpty() || course.isEmpty() || id.isEmpty()) {
                message = "All fields are required.";
            } else {
                // Check if student with the same name already exists
                boolean found = false;
                for (String[] student : studentList) {
                    if (student[0].equals(name)) {
                        found = true;
                        break;
                    }
                }
                if (found) {
                    message = "Student with the same name already exists. Please choose a different name.";
                } else {
                    // Add the form data to the student list
                    studentList.add(new String[]{name, age, course, id});
                }
            }
        } else if (action.equals("delete")) {
            String name = request.getParameter("name");
            if (name.isEmpty()) {
                message = "Please enter a name to delete.";
            } else {
                boolean found = false;
                for (String[] student : studentList) {
                    if (student[0].equals(name)) {
                        studentList.remove(student);
                        found = true;
                        break;
                    }
                }
                if (!found) {
                    message = "Student not found.";
                }
            }
        } else if (action.equals("update")) {
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String course = request.getParameter("course");
            String id = request.getParameter("id");
            // Check if name is empty
            if (name.isEmpty()) {
                message = "Please enter a name to update.";
            } else if (age.isEmpty() || course.isEmpty() || id.isEmpty()) {
                message = "All fields are required for update.";
            } else {
                boolean found = false;
                for (String[] student : studentList) {
                    if (student[0].equals(name)) {
                        student[1] = age;
                        student[2] = course;
                        student[3] = id;
                        found = true;
                        break;
                    }
                }
                if (!found) {
                    message = "Student not found.";
                }
            }
        }
    }
%>

    <div class="login-box">
        <h1>STUDENT MANAGEMENT SYSTEM</h1>
        <table id="studentTable" border="1">
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Course</th>
                <th>ID</th>
            </tr>
            <%-- Iterate over student list and populate the table --%>
            <% for (String[] student : studentList) { %>
                <tr>
                    <td><%= student[0] %></td>
                    <td><%= student[1] %></td>
                    <td><%= student[2] %></td>
                    <td><%= student[3] %></td>
                </tr>
            <% } %>
        </table>
          <%-- Display error message if present --%>
        <p class="error-message"><%= message %></p>

        <form method="post">
            <div class="user-box">
                <input type="text" name="name">
                <label>Name</label>
            </div>
            <div class="user-box">
                <input type="text" name="age">
                <label>Age</label>
            </div>
            <div class="user-box">
                <input type="text" name="course">
                <label>Course</label>
            </div>
            <div class="user-box">
                <input type="text" name="id">
                 <label>ID</label>
            </div>
            <button type="submit" name="action" value="add">Add</button>
            <button type="submit" name="action" value="delete">Delete</button>
            <button type="submit" name="action" value="update">Update</button>
        </form>
    </div>
    <script>
    document.oncontextmenu = () => {
        alert("Don't try right-clicking!");
        return false;
    }

    document.onkeydown = e => {
        if (e.key == "F12") {
            alert("Don't try to inspect element");
            return false;
        }
        if (e.ctrlKey && e.key == "u") {
            alert("Don't try to view page sources");
            return false;
        }
        if (e.ctrlKey && e.key == "c") {
            alert("Don't try to copy page element");
            return false;
        }
        if (e.ctrlKey && e.key == "v") {
            alert("Don't try to paste anything to the page");
            return false;
        }
    }
</script>
</body>
</html>
