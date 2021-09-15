jQuery(function($) {
 
    
    $('.game').on('click', function(e) {
  //  $(this).toggleClass('active');
          window.location.replace('game/letter.html');
  });
  
    $('.video').on('click', function(e) {
  //  $(this).toggleClass('active');
//  alert('eeee');
        window.location.replace('VideoView.jsp');
  });
  
     $('.assginment').on('click', function(e) {
  //  $(this).toggleClass('active');
//  alert('eeee');
        window.location.replace('Assesment.jsp');
  });
  
  
//    $('#bk1').on('click', function(e) {
//  //  $(this).toggleClass('active');
//       
//    var fileName = "demo.pdf";
//     alert(fileName);
//  $("#dialog").dialog({
//                modal: true,
//                title: fileName,
//                width: 540,
//                height: 450,
//                buttons: {
//                    Close: function () {
//                        $(this).dialog('close');
//                    }
//                },
//                open: function () {
//                    var object = "<object data=\"{FileName}\" type=\"application/pdf\" width=\"500px\" height=\"300px\">";
//                    object += "If you are unable to view file, you can download from <a href = \"{FileName}\">here</a>";
//                  object += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
//                    object += "</object>";
//                    object = object.replace(/{FileName}/g, "Files/" + fileName);
//                    $("#dialog").html(object);
//                }
//            });
     //  var toast = new iqwerty.toast.Toast();
	//		toast.setText('This is a basic toast message!').show();
 // });
  
  
  
  
});

//  function myFunction() {
//  var x = document.getElementById("snackbar");
//  x.className = "show";
//  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
//}