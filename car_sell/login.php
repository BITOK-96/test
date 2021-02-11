<?php
include("header.html");

?>
<style>
.login{
	width: 300px;
	box-shadow: 0 0 3px 0 rgba(0,0,0,0.3);
	background: #fff;
	padding: 20px;
	margin: 8% auto 0;
	text-align: center;
}

.login h1
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
<div class="login">
    <h1>Log In</h1>
    <form>  
    
    
    <input type="email" class="input-box" placeholder="Email">
    
     <input type="password" class="input-box" placeholder="Your Password">
     
     <button type="button" class="LoginButton">Log In </button>

     </form>

</div>

</body>


  <?php
include("footer.html");

?>