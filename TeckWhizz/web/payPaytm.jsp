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



                <div class="row">
                    <div for="card" class="qrmethod card">

                        <div class="col col-12 pt-4 ">
                            <img src="payment/qr.png">

                        </div>


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
                window.location.href = "payPaytm.jsp";
            }

        </script>
    </body>
</html>