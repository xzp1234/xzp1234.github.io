<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CPS Index</title>
<script src="js/jquery-1.8.3.min.js"></script>

<script src="js/cps-checkout.js"></script>

</head>

<body>

<button id="MM-button"></button>


</body>
<script type="text/javascript">

MMPay.Button.render({
	
    env: 'sandbox', // Optional: specify 'sandbox' environment

    client: {
        sandbox:    'AQqLiobxUHSIR5sYEY1d1Z7mi804pmkxO3QxTKRDbYUv1f2Pirn505u-kOXKnuCvX7DSstnRKYtgaLRy',
        production: 'access_token$sandbox$rz696ttkz735xzg7$2a92ffb5c0a047604e8d61a97d9a4e7e'
    },

    payment: function() {
    	
        var env    = this.env;
        var client = this.client;

        var result =  MMPay.payment.create(env, client, {
            transactions: [
                {
                    amount: { total: '1.00', currency: 'USD' }
                }
            ]
        });
        
        return result;
    },


    onAuthorize: function(data, actions) {
    	
    	 alert("success");
        // Optional: display a confirmation page here

        return actions.payment.execute().then(function() {
            // Show a success page to the buyer
            
            alert("success");
            
            
        });
    }

}, '#MM-button');

</script>

</html>
