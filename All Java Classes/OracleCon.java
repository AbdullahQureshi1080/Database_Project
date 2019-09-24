import java.sql.*;
import oracle.jdbc.*;
import oracle.jdbc.pool.OracleDataSource;

class OracleCon{
    public static void main(String args[]){
        try{
//step1 load the driver class
            Class.forName("oracle.jdbc.driver.OracleDriver");

//step2 create  the connection object
            Connection con=DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:orcl","FCM","abd007006");

//step3 create the statement object
            Statement stmt=con.createStatement();

//step4 execute query
            ResultSet rs=stmt.executeQuery("select * from club");
            while(rs.next())
                System.out.println(rs.getString(1)+"  " +rs.getString(2)+"  " +rs.getString(3)+"  " +rs.getInt(4)
                        +"  " +rs.getString(5)+"  " +rs.getString(6)+"  " +rs.getString(7)+"  " +rs.getString(8)
                        +"  " +rs.getString(9));

//step5 close the connection object
            con.close();

        }catch(Exception e){ System.out.println(e);}

    }
}
