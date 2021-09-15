$(document).ready(function(){

var current_fs, next_fs, previous_fs; //fieldsets
var opacity;
var current = 1;
var steps = $("fieldset").length;

setProgressBar(current);

$(".next").click(function(){

current_fs = $(this).parent();
next_fs = $(this).parent().next();
//alert(next_fs);
//Add Class Active

$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
//alert(current);
//show the next fieldset

if(current==1)
{
     var getArrVal = $('input[type="radio"][name="std"]:checked').map(function () {
        return this.value;
    }).toArray();


    if (getArrVal.length) {
        //execute the code
        next_fs.show();
    } else {
        $(this).prop("checked", true);
        alert("Select at least one Standard");
        return false;
    }

}
if(current==2)
{
     var getArrVal = $('input[type="radio"][name="bord"]:checked').map(function () {
        return this.value;
    }).toArray();


    if (getArrVal.length) {
        //execute the code
        next_fs.show();
    } else {
        $(this).prop("checked", true);
        alert("Select at least one Bord");
        return false;
    }

}
if(current==3)
{
     var getArrVal = $('input[type="checkbox"][name="subs"]:checked').map(function () {
        return this.value;
    }).toArray();


    if (getArrVal.length) {
        //execute the code
        next_fs.show();
    } else {
        $(this).prop("checked", true);
        alert("Select at least one Subject");
        return false;
    }

}
if(current==4)
{
     var getArrVal = $('input[type="radio"][name="payment"]:checked').map(function () {
        return this.value;
    }).toArray();


    if (getArrVal.length) {
        //execute the code
        next_fs.show();
    } else {
        $(this).prop("checked", true);
        alert("Select at least one Plan");
        return false;
    }

}
if(current===5)
{
    
    var username=document.getElementById("uname").value;
    var mobile=document.getElementById("mno").value;
    var email=document.getElementById("email").value;
    var u=0,e=0,m=0;
    if(username==='undefined' || username=='' || username==' ')
    {
         alert("Required UserName");
     return false;
    }else
    {
        u=1;
        
    }
    if(email==='undefined' || email=='' || email==' ')
    {
         alert("Required email");
     return false;
    }else
    {
        e=1;
       
    }
    if(mobile==='undefined' || mobile=='' || mobile==' ')
    {
        
         alert("Required mobile Number");
     return false;
    }else
    {
                phonenumber(mobile);
        m=1;
       
    }
    if(u===1 && e===1&& m==1 )
    {
      //  next_fs.show(); 
    }

}
//hide the current fieldset with style
current_fs.animate({opacity: 0}, {
step: function(now) {
// for making fielset appear animation
opacity = 1 - now;

current_fs.css({
'display': 'none',
'position': 'relative'
});
next_fs.css({'opacity': opacity});
},
duration: 500
});
setProgressBar(++current);
});

$(".previous").click(function(){

current_fs = $(this).parent();
previous_fs = $(this).parent().prev();

//Remove class active
$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

//show the previous fieldset
previous_fs.show();

//hide the current fieldset with style
current_fs.animate({opacity: 0}, {
step: function(now) {
// for making fielset appear animation
opacity = 1 - now;

current_fs.css({
'display': 'none',
'position': 'relative'
});
previous_fs.css({'opacity': opacity});
},
duration: 500
});
setProgressBar(--current);
});

function setProgressBar(curStep){
var percent = parseFloat(100 / steps) * curStep;
percent = percent.toFixed();
$(".progress-bar")
.css("width",percent+"%")
}

function phonenumber(inputtxt)
{
  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
  if(inputtxt.value.match(phoneno))
     {
	   return true;      
	 }
   else
     {
	   alert("Not a valid Phone Number");
	   return false;
     }
}

$(".submit").click(function(){
    alert('dsds');
return false;
});

$("#con").click(function(){
    var username=document.getElementById("uname").value;
    var mobile=document.getElementById("mno").value;
    var email=document.getElementById("email").value;
    
    var u=0,e=0,m=0;
    if(username==='undefined' || username==='' || username===' ')
    {
         alert("Required UserName");
     return false;
    }else
    {
        u=1;
        
    }
    if(email==='undefined' || email==='' || email===' ')
    {
         alert("Required email");
     return false;
    }else
    {
        e=1;
       
    }
    if(mobile==='undefined' || mobile==='' || mobile===' ')
    {
        
         alert("Required mobile Number");
     return false;
    }else
    {
             //   phonenumber(mobile);
        m=1;
       
    }
   
    alert("OTP Required Click Send OTP");
    
});

$("#otp").click(function(){
    var mobile=document.getElementById("mno").value;
      var username=document.getElementById("uname").value;
   
    var email=document.getElementById("email").value;
     if(mobile==='undefined' || mobile=='' || mobile==' ')
    {
        
         alert("Required mobile Number");
     return false;
    }else
    {
      var digits = '0123456789'; 
    var OTP = ''; 
    for (var i = 0; i < 4; i++ ) { 
        OTP += digits[Math.floor(Math.random() * 10)]; 
    } 
    
    //("#otpf").hide()
   // next_fs.show();
//      next_fs.show();
//        next_fs.show();
//          next_fs.show();
         //   next_fs.show();
//      var otpmsg="Welcome to WISHTOPIA LEARNINGS,To Register your One Time Password(OTP) for Verification-Enter OTP :"+OTP;
   var requestUrl  = "SendTutionOTP?mno="+mobile+'&uname='+username+'&email='+email;
//        "&contacts="+mobile+""+
//        "&senderid=WISHTO&msg="+otpmsg;
window.location.href=requestUrl;


    }
      
});


});