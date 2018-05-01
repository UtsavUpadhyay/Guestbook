<%@ page import="java.util.*" %>
<%@ page import="bean.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Guestbook Application</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/libs/jquery-2.1.4.min.js"></script>
  <script src="js/libs/bootstrap.min.js"></script>
  <script src="js/jquery-dateFormat.min.js"></script>
  <script src="js/format-date.js"></script>
  
</head>
<body>
    
<%
ArrayList<Userbean> arrayuser = new ArrayList<>();
arrayuser = (ArrayList<Userbean>) request.getAttribute("userbeanarray");

%>

    <div class="container">
<div class="row">
     <div class="col-sm-12">
        <div class="btn-group btn-group-justified">
 		  <a href="index.html" class="btn btn-primary">Home</a>
          <a href="view.jsp" class="btn btn-primary">Guestbook</a>
          <a href="add.jsp" class="btn btn-primary">Sign</a>
          <a href="login.jsp" class="btn btn-primary">Login</a>
          </div>
     </div>
        </div>
<div class="jumbotron">
    <h3>View Guestbook Entries</h3>
      <p>A detailed list of all approved guestbook entries.</p>
    </div>            

				
                        
       
            
<table border="1" width="100%" class="table-hover table table-striped">
<tr>
    <th>Full Name</th>
    <th>Email</th>
    <th>Message</th>
    <th>Entry Date</th>
    
</tr>

			<% 
                if(arrayuser.size() >0) {
                
                System.out.println(arrayuser.size());	
                
                for(int i=0;i<arrayuser.size();i++) {
                Userbean user = new Userbean();
                user = arrayuser.get(i);
                
                %>

	<form action="View" method="GET" class="form-inline bs-form" 
                  role="form">
                            

		<tr>
			<input type="hidden" name="id" value="<%= user.getUser_id() %>">                	
     		<td><%= user.getName() %></td>
    		<td><%= user.getEmail_id()%></td>
    		<td><%= user.getContent() %></td>
    		<td><%= user.getDate() %></td>
    
		</tr>
	</form>
			<% 
                }
                }else{}%>
     
</table>
</div>        
</body>
</html>
