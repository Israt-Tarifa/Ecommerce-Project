
<?php 
include 'config.php';
session_start(); ?>
<?php



$val_id=urlencode($_POST['val_id']);
$store_id=urlencode("test661ff12114691");
$store_passwd=urlencode("test661ff12114691@ssl");
$requested_url = ("https://sandbox.sslcommerz.com/validator/api/validationserverAPI.php?val_id=".$val_id."&store_id=".$store_id."&store_passwd=".$store_passwd."&v=1&format=json");

$handle = curl_init();
curl_setopt($handle, CURLOPT_URL, $requested_url);
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, false); # IF YOU RUN FROM LOCAL PC
curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, false); # IF YOU RUN FROM LOCAL PC

$result = curl_exec($handle);

$code = curl_getinfo($handle, CURLINFO_HTTP_CODE);

if($code == 200 && !( curl_errno($handle)))
{

	# TO CONVERT AS ARRAY
	# $result = json_decode($result, true);
	# $status = $result['status'];

	# TO CONVERT AS OBJECT
	$result = json_decode($result);

	# TRANSACTION INFO
	$status = $result->status;
	$tran_date = $result->tran_date;
	$tran_id = $result->tran_id;
	$val_id = $result->val_id;
	$amount = $result->amount;
	$store_amount = $result->store_amount;
	$bank_tran_id = $result->bank_tran_id;
	$card_type = $result->card_type;

	# EMI INFO
	$emi_instalment = $result->emi_instalment;
	$emi_amount = $result->emi_amount;
	$emi_description = $result->emi_description;
	$emi_issuer = $result->emi_issuer;

	# ISSUER INFO
	$card_no = $result->card_no;
	$card_issuer = $result->card_issuer;
	$card_brand = $result->card_brand;
	$card_issuer_country = $result->card_issuer_country;
	$card_issuer_country_code = $result->card_issuer_country_code;

	# API AUTHENTICATION
	$APIConnect = $result->APIConnect;
	$validated_on = $result->validated_on;
	$gw_version = $result->gw_version;



	$title = 'Payment Successful';
	$response = '<div class="panel-body">
				  	<i class="fa fa-check-circle text-success"></i>
				    <h3>Payment Successful</h3>
				    <p>Your Product Will be Delivered within 4 to 7 days.</p>
				  	<a href="'.$hostname.'" class="btn btn-md btn-primary">Continue Shopping</a>
				  </div>';

	  // reduce purchased quantity from products
	    $db = new Database();
	    $db->select('order_products','product_id,product_qty',null,null,null,null);
	    $result = $db->getResult();
	    $products = array_filter(explode(',',$result[0]['product_id']));
	    $qty = array_filter(explode(',',$result[0]['product_qty']));
	    for($i=0;$i<count($products);$i++){
	    	$db->sql("UPDATE products SET qty = qty - '{$qty[$i]}' WHERE product_id = '{$products[$i]}'");
	    }
	    $res = $db->getResult();


	  // remove cart items
	  	if(isset($_COOKIE['user_cart'])){
	        setcookie('cart_count','',time() - (180),'/','','',TRUE);
			setcookie('user_cart','',time() - (180),'/','','',TRUE);
	    }

   
			echo $status." ". $tran_date." ".$card_type;
} else {

	echo "Failed to connect with SSLCOMMERZ";
}


	
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo $title; ?></title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="payment-response">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-3 col-md-6">
					<div class="panel panel-default">
					  <?php echo $response; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


