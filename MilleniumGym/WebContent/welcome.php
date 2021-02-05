<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<style>
p.line {
line-height: 1.7;
}
</style>

<body>

<form  name ="entry" action ="chech_out.php"  method ="post">

<h1>Welcome to Millennium Gymnastics Booster Club Popcorn Sales</h1>

<p class="line">Buyers Name      : <input type ="text" name ="buyers_name"  > <br>
<line-height: 1.8>
Street Address  : <input type ="text" name ="address" > <br>

City, State, Zip: <input type ="text" name ="city_state_zip" > <br>

</p>


<table style="width: 35%" border="1">
<tr>
<th>Product </th>
<th>Price </th>
<th>Quantity </th>
</tr>
<tr>
<td>Unpopped Popcorn(1 lb.)</td>
<td>$3.00</td>
<td><input type ="number"  min ="0", name = one_order></td>
</tr>
</tr>
<td>Caramel Popcorn(2 lb. Canister)</td>
<td>$3.50</td>
<td><input type ="number"  min ="0", name = two_order></td>
<tr>
<tr>
<td>Caramel Nut Popcorn(2 lb. Canister)</td>
<td>$4.50</td>
<td><input type ="number"  min ="0", name = three_order></td>
</tr>
<tr>
<td>Toffey Nut Popcorn(2 lb. Canister)</td>
<td>$5.00</td>
<td><input type ="number" min ="0", name = four_order></td>
</tr>
</table>

<h1>Payment Method</h1>
<input type="radio" id="visa" name="payment" value="visa" >
<label for="visa">Visa</label></br> 
<input type="radio" id="master card" name="payment" value="master card" >
<label for="visa">Master Card</label></br> 
<input type="radio" id="discover" name="payment" value="discover" >
<label for="visa">Discover</label></br> 
<input type="radio" id="check" name="payment" value="check" >
<label for="visa">Check</label></br> 
<p class="line"></p>
<input type ="submit" name ="submit" value ="Submit Order">
<!-- <input type ="submit" name ="clear" value ="Clear Order"> -->

<!--  <button onclick ="document.getElementByName('buyers_name').value=''"></button>  -->

</form>
<?php 

    


?>


</body>
</html>