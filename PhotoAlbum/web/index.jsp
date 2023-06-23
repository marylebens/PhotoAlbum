
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Photo Album </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Photo Album</h1>
        
<%
    //Use a try/catch block to catch any database exceptions
    try {
        //Create a connection to the database
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/photoalbum",
        "root", "admin");
    
      //Create a new SQL statement using the connection
        Statement stmt = con.createStatement();
        
        //Execute the SQL statement to retrieve a list of 
        //products from the database.
        //This SQL query will retrieve the records from 
        //the products table.
        ResultSet rs = stmt.executeQuery("SELECT * FROM photos;");
        
        //Start the while loop to loop the records in the resultset
        while(rs.next()){
%>

<table border="1">
    <thead>
        <tr>
    <br>&nbsp;<br>
            <th colspan="2"><%=rs.getString("title")%></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%=rs.getString("description")%></td>
        </tr>
        <tr>
         
            <td>
            <img src="<%=rs.getString("photo")%>" width="200" height="150">
            </td>
        </tr>

    </tbody>
</table>
            
            <%
                }//end while loop
                //Close the connection to the database
                con.close();
             }catch(Exception e){
                out.println(e);
             }//end try catch
            %>
    </body>
</html>
