<%@ page import="java.util.*" %>
<%@ page import="bean.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Guestbook Application</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/docs.css">
  <script src="js/libs/jquery-2.1.4.min.js"></script>
  <script src="js/libs/bootstrap.min.js"></script>

</head>
<%
ArrayList<Userbean> arrayuser = new ArrayList<>();
arrayuser = (ArrayList<Userbean>) request.getAttribute("userbeanarray");
%>
<body>  <div class="container">
    <div class="row">
     <div class="col-sm-12">
        <div class="btn-group btn-group-justified">
          <a href="index.html" class="btn btn-primary">Home</a>
          <a href="View" class="btn btn-primary">Guestbook</a>
          <a href="add.jsp" class="btn btn-primary">Add</a>
         </div> <!-- /btn-group -->
     </div> <!-- /col-sm-12 -->
    </div> <!-- /row -->
    <div class="jumbotron">
    <h2>Manage a Guestbook Entry</h2>
    <p>Delete a record or Approve a record.</p>
    </div>            
        
            
            <table border="1" width="100%" class="table-hover table table-striped">
                <tr>
                	<th>Delete</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Message</th>
                    <th>Date</th>
                    <th>Approve</th>
                    </tr>
                
                <% 
                if(arrayuser.size() >0) {
                
                System.out.println(arrayuser.size());
                
                for(int i=0;i<arrayuser.size();i++) {
                Userbean user = new Userbean();
                user = arrayuser.get(i);
                
                %>
            <form action="ManageGB" method="POST" class="form-inline bs-form" 
                  role="form">
                
               
    
                
                <tr>
                	<input type="hidden" name="id" value="<%= user.getUser_id() %>">
                	<td><input type="submit" value="delete" class="btn btn-primary" name="del"><img align="center" src="./images/Delete_32.png"/></input></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getEmail_id() %></td>
                    <td><%= user.getContent() %></td>
                    <td><%= user.getDate() %></td>
                    <td><input type="submit" value="approve" class="btn btn-primary" name="approve"><img src="./images/Approve_32.png"/></input></td>
                    
                </tr>
                </form>
    
                <% 
                }
                }else{}%>
            </table>
            
</div> 
    </body>
</html>
