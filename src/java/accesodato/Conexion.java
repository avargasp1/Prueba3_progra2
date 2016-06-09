
package accesodato;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Conexion {
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    public Conexion() {

        String driver = "com.mysql.jdbc.Driver";
        String user = "root";
        String pass = "root";
        String url = "jdbc:mysql://localhost:3306/Prueba";
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, user, pass);

        } catch (Exception ex) {
            System.out.println("Error de conexion!!" + ex.getMessage());
        }
    }
    
    public void setConsulta(String sql) {

        try {
            stmt = con.createStatement();
            stmt.executeQuery(sql);
            rs = stmt.getResultSet();
        } catch (SQLException ex) {
        }
    }

    public ResultSet getResult() {
        return rs;
    }

    public void setInsertar(String sql) {
        try {
            stmt = con.createStatement();
            stmt.executeUpdate(sql);
        } catch (SQLException ex) {
        }

    }
}
