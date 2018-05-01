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
  <script src="js/update.js"></script>
</head>
<body><div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="btn-group btn-group-justified">
             <a href="index.html" class="btn btn-primary">Home</a>
          	<a href="View" class="btn btn-primary">Guestbook</a>
          	<a href="add.jsp" class="btn btn-primary">Sign</a>
          	<a href="login.jsp" class="btn btn-primary">Login</a>
         </div>
        </div>
    </div>
    <div class="jumbotron">
    
    <h3> Please LOGIN here... </h3>
      <div class="bs-form">
        <form action="Valid" method="post" id="myform">
            
            <div class="form-group">
                <label for="uname">User Name:</label>
                <input type="text" name="uname" id="uname" class="form-control" 
                       placeholder="Enter User Name" required="required"/>
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" class="form-control"
                       placeholder="Enter password" required="required"/>
            </div>
            
            
            <button type="submit" class="btn btn-primary">Submit</button>  
        </form>   
      </div>
    </div>    
</div> 
</body>
</html>
