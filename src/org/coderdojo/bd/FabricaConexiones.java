package org.coderdojo.bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FabricaConexiones {

	private static FabricaConexiones laFabrica;
	
	static {
		try {
			laFabrica=new FabricaConexiones();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException("Arrea, el driver no se hab�a cargado");
		}
	}
	private FabricaConexiones() throws ClassNotFoundException{
		//1 cargar el driver
		System.out.println("Loading Driver...");
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("Done!\n");
		
	}
	public static FabricaConexiones getFabrica(){
		return laFabrica;
	}
	public Connection dameConexion() throws SQLException{
		return DriverManager.getConnection("jdbc:mysql://betagaming.zapto.org:3306/betagaming","BetaGamingServer","percot");	
		//pi@83.44.175.174
		//pi@betagaming.zapto.org
		//pass: percot
		//mysql user: root 
		//mysql pass: root
	}
}
