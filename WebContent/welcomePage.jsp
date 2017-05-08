<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.coderdojo.utils.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
    <link rel="shortcut icon" type="image/png" href="https://raw.githubusercontent.com/CoderDojoMaj/Beta-Gaming/master/templogo.png"/>
		<title>BetaGaming-Welcome Mag</title>
<style>

/* Style the close button */
.topright {
    float: right;
    cursor: pointer;
    font-size: 20px;
}

.topright:hover {color: red;}
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}



.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
img.avatar {
    width: 40%;
}
.container {
    padding: 16px;
}
span.psw {
    float: right;
    padding-top: 16px;
}

.modal {
    display: none; 
    position: fixed; 
    z-index: 1; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    overflow: auto; 
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0,0.4); 
    padding-top: 60px;
}

.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}
@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
	
	
	
	
	
	
	
	
	
		body {font-family: "Lato", sans-serif;}

		div.tab {
			overflow: hidden;
			border: 1px solid #ccc;
			background-color: #f1f1f1;
		}

		.button1 {
			color: white; 
				border: 2px solid #ffffff;
				background-color: #000000;
				color: white;
				padding: 16px;
				font-size: 16px;
				border: none;
				cursor: pointer;
		}
		
		.button2 {
			color: white; 
				border: 2px solid #ffffff;
				background-color: #000000;
				color: white;
				padding: 16px;
				font-size: 16px;
				border: none;
				cursor: pointer;
		}

		div.tab button {
			background-color: inherit;
			float: left;
			border: none;
			outline: none;
			cursor: pointer;
			padding: 14px 16px;
			transition: 0.3s;
			font-size: 17px;
		}

		div.tab button:hover {
			background-color: #ddd;
		}

		div.tab button.active {
			background-color: #ccc;
		}

		.tabcontent {
				display: none;
				padding: 6px 12px;
				border: 1px solid #ccc;
				border-top: none;
			}
			.topright {
				float: right;
				cursor: pointer;
				font-size: 20px;
			}

			.topright:hover {color: red;}


			body{background-color:black}
		 
			.dropbtn {
				color: white; 
				border: 2px solid #ffffff;
				background-color: #000000;
				color: white;
				padding: 16px;
				font-size: 16px;
				border: none;
				cursor: pointer;
				
			}


			.dropdown {
				position: relative;
				display: inline-block;
			}


			.dropdown-content {
				display: none;
				position: absolute;
				background-color: #f9f9f9;
				min-width: 160px;
				box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
				z-index: 1;
			}

			.dropdown-content a {
				color: black;
				padding: 12px 16px;
				text-decoration: none;
				display: block;
			}

			.dropdown-content a:hover {background-color: #f1f1f1}

			.dropdown:hover .dropdown-content {
				display: block;
			}

			.dropdown:hover .dropbtn {
				background-color: #282828;
				}
				table td {
				text-align: center;
				}
				table tr {
				color:ffffff;
			}

			{box-sizing:border-box}
			body {font-family: Verdana,sans-serif;}
			.mySlides {display:none}

			.slideshow-container {
				max-width: 1000px;
				position: relative;
				margin: auto;
			}

			.text {
				color: #f2f2f2;
				font-size: 15px;
				padding: 8px 12px;
				position: absolute;
				bottom: 8px;
				width: 100%;
				text-align: center;
			}


			.numbertext {
				color: #f2f2f2;
				font-size: 12px;
				padding: 8px 12px;
				position: absolute;
				top: 0;
			}


			.dot {
				height: 13px;
				width: 13px;
				margin: 0 2px;
				background-color: #bbb;
				border-radius: 50%;
				display: inline-block;
				transition: background-color 0.6s ease;
			}

			.active {
				background-color: #717171;
			}

			.fade {
				-webkit-animation-name: fade;
				-webkit-animation-duration: 1.5s;
				animation-name: fade;
				animation-duration: 1.5s;
			}

			@-webkit-keyframes fade {
				from {opacity: .4} 
				to {opacity: 1}
			}

			@keyframes fade {
				from {opacity: .4} 
				to {opacity: 1}
			}

			@media only screen and (max-width: 300px) {
				.text {font-size: 11px}
			}
			.div {
				background-color: #ffffff;
			}
</style>
</head>
<body>
<center>
			<table  bgcolor="#000000" style="width:100%" >
				<tr>
					<center>
					<td><div class="imgcontainer">
							<img src="https://raw.githubusercontent.com/CoderDojoMaj/Beta-Gaming/master/templogo.png" alt="logo" class="avatar" style="width:70px;height:70px;">
						</div></td>
												<td>
							<div class="dropdown">
								<button class="dropbtn">New...</button>
								<div class="dropdown-content">
									<a href="#">Friends</a>
									<a href="#">Partida</a>
									<a href="#">Game</a>
									<a href="#">Player</a>
								</div>
							</div>
						</td>
						<td><button class="button button2"><% out.println(((User)session.getAttribute("user")).getNickname()); %></button></td>
						<td><input class="button button1" type="image" src="imagenes/lupa.png" width="24" height="24"></td>
					</center>
				</tr>
			</table>
			<table style="width:95%">
				<tr>
					<td bgcolor="#ffffff"><h1>Welcome to</h1></td>
				</tr>
				<tr>
				<td><div class="imgcontainer">
      <img src="https://raw.githubusercontent.com/CoderDojoMaj/Beta-Gaming/master/templogo.png" alt="logo" class="avatar" style="width:250px;height:250px;">
    </div></td>
				</tr>
				<tr>
					<td bgcolor="#ffffff">
						<div class="tab">
						<button class="tablinks" onclick="openCity(event, 'Best Games')" id="defaultOpen">Best Games</button>
						<button class="tablinks" onclick="openCity(event, 'Best matches')">Best matches</button>
						<button class="tablinks" onclick="openCity(event, 'Most followed people')">Most followed people</button>
						</div>


						<div id="Best Games" class="tabcontent">
						<span onclick="this.parentElement.style.display='none'" class="topright">x</span>
						<h3>Best Games</h3>
						<p>Minecraft</p>
						<p>Call of duty</p>
						<p>Clash Royale</p>
						</div>

						<div id="Best matches" class="tabcontent">
						<span onclick="this.parentElement.style.display='none'" class="topright">x</span>
						<h3>Best matches</h3>
						<p>El game-Minecraft;0:24</p> 
						<p>Mag-Call Of Duty IW;3:23</p> 
						</div>

						<div id="Most followed people" class="tabcontent">
						<span onclick="this.parentElement.style.display='none'" class="topright">x</span>
						<h3>Most followed people</h3>
						<p>Bill Gates</p>
						<p>Larry Page</p>
						<p>Steve Jobs</p>
						<p>Sergu�i Brin</p>
					</div>
					</td>
				</tr>
			</table>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

document.getElementById("defaultOpen").click();

var modal = document.getElementById('id01');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="https://raw.githubusercontent.com/CoderDojoMaj/Beta-Gaming/master/templogo.png" alt="logo" class="avatar" style="width:250px;height:250px;">
    </div>

    <div class="container">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button style='width:70px; height:41px' type="submit" >Login</button>  
    </div>
  </form>
</div>
</body>
</html> 
