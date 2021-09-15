<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Livvic:400,700" rel="stylesheet">
  <link rel="stylesheet" href="payment/style.css">
<meta name="robots" content="noindex,follow" />
</head>
<body>

  <div class="checkout-panel">
    <div class="panel-body">
      <h2 class="title">&nbsp;</h2>

      <div class="progress-bar">
        <div class="step active"></div>
        <div class="step active"></div>
        <div class="step"></div>
        <div class="step"></div>
      </div>

      <div class="payment-method">
        <label for="card" class="method card">
          <div class="card-logos">
              <img src="payment/visa_logo.png"/>
            <img src="payment/mastercard_logo.png"/>
          </div>

          <div class="radio-input">
            <input id="card" type="radio" name="payment">
            Pay Rs0.00 with credit card
          </div>
        </label>

        <label for="paypal" class="method paypal">
          <img src="payment/paypal_logo.png"/>
          <div class="radio-input">
            <input id="paypal" type="radio" name="payment">
            Pay Rs0.00 with PayPal
          </div>
        </label>
          
      
          
           <label for="paytm" class="method paytm">
               <img src="payment/Paytm_logo.png"/>
          <div class="radio-input">
              <input id="paytm" type="radio" name="payment" onclick="payPaytm()">
            Pay 0.00 with Phonepe
          </div>
        </label>
          
            <label for="phonepe" class="method phonepe">
                <img src="payment/PhonePe.png"/>
          <div class="radio-input">
            <input id="phonepe" type="radio" name="payment">
            Pay 0.00 with Phonepe
          </div>
        </label>
      </div>

      <div class="input-fields">
        <div class="column-1">
          <label for="cardholder">Cardholder's Name</label>
          <input type="text" id="cardholder" />

          <div class="small-inputs">
            <div>
              <label for="date">Valid thru</label>
              <input type="text" id="date" placeholder="MM / YY" />
            </div>

            <div>
              <label for="verification">CVV / CVC *</label>
              <input type="password" id="verification"/>
            </div>
          </div>

        </div>
        <div class="column-2">
          <label for="cardnumber">Card Number</label>
          <input type="password" id="cardnumber"/>

          <span class="info">* CVV or CVC is the card security code, unique three digits number on the back of your card separate from its number.</span>
        </div>
      </div>
    </div>

    <div class="panel-footer">
      <button class="btn back-btn">Back</button>
      <button class="btn next-btn">Next Step</button>
    </div>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="payment/script.js"></script>
  
  <script type="text/javascript">
      
     function payPaytm()
     {
         window.location.href="payPaytm.jsp";
     }
      
  </script>
</body>
</html>