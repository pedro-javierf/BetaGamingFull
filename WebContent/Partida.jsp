<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="org.coderdojo.utils.*" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
    <head>		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
		<link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" type="image/png" href="https://raw.githubusercontent.com/CoderDojoMaj/Beta-Gaming/master/templogo.png"/>
		<title>BetaGaming-</title>
		<style type="text/css">
		.playbtn {
				position: absolute;
				background-color: #f9f9f9;
				min-width: 160px;
				box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
				z-index: 1;
			}

			.playbtn a {
				color: black;
				padding: 12px 16px;
				text-decoration: none;
				display: block;
			}
		</style>
    </head>
    <body>  
    <% String r = request.getParameter("pos"); 
    if(r==null){
    	System.out.println("Hubo un problema al recoger pos");
    	return;
    }
    int posicion = Integer.valueOf(r);
    ArrayList<Buscable> lista = (ArrayList<Buscable>) session.getAttribute("searchResult");
    session.removeAttribute("searchResult");
    if(lista==null){
    	System.out.println("Hubo un problema al recoger lista");
    	return;
    }
    Partida p = (Partida)lista.get(posicion);
    session.setAttribute("partida", p);
    %>
        <div id ="contenedor">  
            <div id ="cabecera">
									<img src="https://raw.githubusercontent.com/CoderDojoMaj/Beta-Gaming/master/templogo.png" alt="logo" class="avatar" style="width:70px;height:70px;">
								<button align="center" id="usuario"><%  out.println(((User) session.getAttribute("user")).getNickname());  %></button>
								<input align="right" type="image" src="images/lupa.png" width="30" height="30">
						</div> 

            <div id ="izquierda">
							<br><br>
									<div id="wrapper">
								<ul class="menu">
									<li class="item1"><a href="#">Friends <span>340</span></a>
										<ul>
											<li class="subitem1"><a href="#">Cute Kittens <span>14</span></a></li>
											<li class="subitem2"><a href="#">Strange “Stuff” <span>6</span></a></li>
											<li class="subitem3"><a href="#">Automatic Fails <span>2</span></a></li>
										</ul>
									</li>
									<li class="item2"><a href="#">Videos <span>147</span></a>
										<ul>
											<li class="subitem1"><a href="#">Cute Kittens <span>14</span></a></li>
											<li class="subitem2"><a href="#">Strange “Stuff” <span>6</span></a></li>
											<li class="subitem3"><a href="#">Automatic Fails <span>2</span></a></li>
										</ul>
									</li>
									<li class="item3"><a href="#">Galleries <span>340</span></a>
										<ul>
											<li class="subitem1"><a href="#">Cute Kittens <span>14</span></a></li>
											<li class="subitem2"><a href="#">Strange “Stuff” <span>6</span></a></li>
											<li class="subitem3"><a href="#">Automatic Fails <span>2</span></a></li>
										</ul>
									</li>
									<li class="item4"><a href="#">Podcasts <span>222</span></a>
										<ul>
											<li class="subitem1"><a href="#">Cute Kittens <span>14</span></a></li>
											<li class="subitem2"><a href="#">Strange “Stuff” <span>6</span></a></li>
											<li class="subitem3"><a href="#">Automatic Fails <span>2</span></a></li>
										</ul>
									</li>
									<li class="item5"><a href="#">Robots <span>16</span></a>
										<ul>
											<li class="subitem1"><a href="#">Cute Kittens <span>14</span></a></li>
											<li class="subitem2"><a href="#">Strange “Stuff” <span>6</span></a></li>
											<li class="subitem3"><a href="#">Automatic Fails <span>2</span></a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
				
            <div id ="derecha">
							<table align="center">
								<tr>
								<td>Match</td>
								</tr>
								<tr>
								<td>Owner: <% out.println(((Partida)lista.get(posicion)).getOwnerName()); %></td>
								</tr>
								<tr>
								<td>Game: <% out.println(((Partida)lista.get(posicion)).getGameName()); %></td>
								</tr>
								<tr>
								<td>Number of players: <% out.println(((Partida)lista.get(posicion)).getNPlayers()); %></td>
								</tr>
								<tr>
								<td><div class="playbtn"><a href="play">Play</a></div></td>
								</tr>
							</table>
						</div> 
						
            <div id ="pie">
						<br><hr color="#d3d3d3" width="80%">
						<center>
							© BetaGaming 2017 &mdash; Terms <a href="#"><img style="width:154px;height:33px;" src="images/templogoB.png" border="0"></a> Help &mdash; Contact BetaGaming
							</center>
						</div> 
						
        </div>  
    </body>  
</html>