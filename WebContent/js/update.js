
$(function() {
        var $find = $('#find');
        var $message = $('#message');
        var message = $message.html().trim();
        var $updateForm = $('#updateform');
        
        $find.click(function() {    
         $updateForm.show();
      }); 
        $message.text(message);
        if ($message.html() === "") {
            $updateForm.hide();
        }
      });

