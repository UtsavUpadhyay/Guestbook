
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Guestbook Application</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/libs/jquery-2.1.4.min.js"></script>
  <script src="js/libs/bootstrap.min.js"></script>
  <style>
      .bs-form {
          margin:0 100px;
      }
  </style>
</head>
<body>

<div class="container">
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
        <h3>Add a Guestbook Entry</h3>
        <p>A new record entry to the guestbook database <b>
        </b></p>
    </div>            
    <div class="bs-form">
        <form action="AddItem" method="GET" role="form">
            
            <div class="form-group">
                <label for="fname">Full Name:</label>
                <input type="text" name="fname" id="fname" class="form-control" 
                       placeholder="Enter Full Name" required="required"/>
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" class="form-control"
                       placeholder="Enter Email" required="required"/>
            </div>
            
            <div class="form-group">
                <label for="message">Guestbook Entry Message:</label>
                <textarea name="message" id="message" class="form-control" placeholder="Please leave a message" 
                          required="required">
                </textarea>
            </div>
            
            <button type="submit" class="btn btn-primary">Add Message</button>  
        </form>   
    
    </div>
      </div>      
    </body>
</html>
