/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package myClass;
import java.sql.*;
/**
 *
 * @author user
 */
public class MyConnection {
public static Connection getCon() throws SQLException, ClassNotFoundException
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","radhika");
    return con;
}
}