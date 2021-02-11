<?php
include("header.html");

?>
<style>
.signUp{
	width: 300px;
	box-shadow: 0 0 3px 0 rgba(0,0,0,0.3);
	background: #fff;
	padding: 20px;
	margin: 8% auto 0;
	text-align: center;
}

.signUp h1
{
	color: purple;
}

.input-box 
{
	border-radius: 20px;
	padding: 10px;
	margin: 10px 0;
	width: 100%;
	border: 1px;
}
button{
color: purple;
width: 100%;
padding: 10px;
border-radius: 20px;
font-size: 15px;
margin: 10px 0;
border: none;
outline: none;
cursor: pointer;
}

</style>
<body>
<div class="signUp">
    <h1>Sign Up</h1>
    <form>  
    <input type="text" class="input-box" placeholder="First Name">
   
    <input type="text" class="input-box" placeholder="Second Name">
    
    <input type="email" class="input-box" placeholder="Email">
    
     <input type="password" class="input-box" placeholder="Your Password">
     
     <input type="password" class="input-box" placeholder="Re-Enter Passsword">
     
     <p> <span> <input type ="Checkbox"> </span>I agree to the Terms and Conditions  </p>
     <button type="button" class="SignUpButton">Sign Up</button>

     </form>

</div>

</body>


  <?php
include("footer.html");

?>