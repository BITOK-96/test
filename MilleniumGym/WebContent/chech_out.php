<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>

<body>

<p><b>Customer:</b> </p>
<br>


<?php

if(isset($_POST["submit"])){
    $buyersNa =$_POST["buyers_name"];
    $addres =$_POST["address"];
    $city_state_zi =$_POST["city_state_zip"];
 
    
    print ($buyersNa);
     echo "<br>";
    print ($addres);
     echo "<br>";
    print ($city_state_zi);
     echo "<br>";
  
    
$first_order= $_POST["one_order"];
$second_order= $_POST["two_order"];
$third_order= $_POST["three_order"];
$fourth_order= $_POST["four_order"];
$chosen_pay= $_POST["payment"];

$total_cost = (3.00*$first_order)+(3.50*$second_order)+(4.50*$third_order)+(5.00*$fourth_order);
$TotalQuantity =$first_order +$second_order +$third_order +$fourth_order;

$first_itemC =3.00*$first_order;
$second_itemC  =3.50*$second_order;
$third_itemC =4.50*$third_order;
$fourth_itemC = 5.00*$fourth_order;

echo" <h3>The Order Information </h3>";
echo "<br>";

echo "


<table border='1'>
<tr>
<th>Product </th>
<th>Unit Price </th>

<th>Quantity Ordered </th>
<th>Item Cost </th>



</tr>
<tr>
<td>Unpopped Popcorn(1 lb.)</td>
<td>$3.00</td>
<td>$first_order</td>
<td>$first_itemC</td>

</tr>
</tr>
<td>Caramel Popcorn(2 lb. Canister)</td>
<td>$3.50</td>
<td>$second_order</td>
<td>$second_itemC</td>

<tr>
<tr>
<td>Caramel Nut Popcorn(2 lb. Canister)</td>
<td>$4.50</td>
<td>$third_order</td>
<td>$third_itemC</td>

</tr>
<tr>
<td>Toffey Nut Popcorn(2 lb. Canister)</td>
<td>$5.00</td>
<td>$fourth_order</td>
<td>$fourth_itemC</td>

</tr>
</table>


";




echo "<br>";
echo "<br>";

print ("You ordered $TotalQuantity popcorn items");
echo '<br>';
print ("You Total Bill is: $total_cost");
echo '<br>';
print ("Your chosen method of payment is: $chosen_pay");

    
}

?>






</body>
</html>