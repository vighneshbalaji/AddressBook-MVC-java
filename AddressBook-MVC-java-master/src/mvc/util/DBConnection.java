/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.util;

/**
 *
 * @author Admin
 */
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;
public class DBConnection {
    
     private static DBConnection dbConnect = new DBConnection();
     Connection con=null ;
     private DBConnection(){}
     public static DBConnection getInstance(){
         return dbConnect;
     }
      public Connection getConnect(){
        try{
            FileInputStream file=new FileInputStream("dbconfig.properties");
            Properties prop = new Properties();
            prop.load(file);
        
     
            //String driver = prop.getProperty("driver");
            String dbUrl = prop.getProperty("url");
            String userName = prop.getProperty("userName");
            String password = prop.getProperty("password");
            String dBase = prop.getProperty("dBase");
            String url = dbUrl + dBase;
            
                    //JOptionPane.showMessageDialog(null, dbUrl, "InfoBox: dburl " , JOptionPane.INFORMATION_MESSAGE);
                   // JOptionPane.showMessageDialog(null, userName, "InfoBox: username", JOptionPane.INFORMATION_MESSAGE);
                   // JOptionPane.showMessageDialog(null, password, "InfoBox: pass" , JOptionPane.INFORMATION_MESSAGE);
                   // JOptionPane.showMessageDialog(null, dBase, "InfoBox: dbase" , JOptionPane.INFORMATION_MESSAGE);
                   // JOptionPane.showMessageDialog(null, url, "InfoBox: url" , JOptionPane.INFORMATION_MESSAGE);

            
            
            //Class.forName(driver);
            //String connectString = url+dBase+"?user="+userName+"&password="+password;
            
            
             con = DriverManager.getConnection(url,userName,password);
            
            /*if(!con.isClosed())
                System.out.println("Connected to MySQL");*/
        }catch(Throwable e){
            e.printStackTrace();
        }
        
        return con;
    }
    
}
