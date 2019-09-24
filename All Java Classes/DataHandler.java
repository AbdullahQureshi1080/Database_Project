
import java.sql.*;
import java.util.Scanner;

import oracle.jdbc.pool.OracleDataSource;


public class DataHandler {
    Statement stmt;
    ResultSet rset;
    String query;
    String sqlString;


    public DataHandler() {
    }
    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
    String userid = "hr";
    String password = "123";
    Connection conn;
    public void getDBConnection() throws SQLException{
        OracleDataSource ds;
        ds = new OracleDataSource();
        ds.setURL(jdbcUrl);
        conn=ds.getConnection(userid,password);
    }

    /*public ResultSet getAllClubs() throws SQLException{
        getDBConnection();
        stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
         query = "SELECT * FROM Club ORDER BY Club_Name";
        System.out.println("\nExecuting query: " + query);
        rset = stmt.executeQuery(query);
        return rset;
    }

    public ResultSet getAllClubsByName(String n) throws SQLException{
        //Scanner input = new Scanner(System.in);
        String name = n.toUpperCase();
        //name.toUpperCase();
        getDBConnection();
        stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        query = "SELECT * FROM Club WHERE UPPER(CLUB_NAME) LIKE \'%" + name + "%\' ORDER BY Worth";
        System.out.println("\nExecuting query: " + query);
        rset = stmt.executeQuery(query);
        return rset;
    }*/
    public String addEmployee(String first_name,
                              String last_name, String email,
                              String phone_number, String job_id, int salary) throws SQLException {
        getDBConnection();
        stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        sqlString =
                "INSERT INTO Employees VALUES (EMPLOYEES_SEQ.nextval, '" +
                        first_name + "','" +
                        last_name + "','" +
                        email + "','" +
                        phone_number + "'," +
                        "SYSDATE, '" +
                        job_id + "', " +
                        salary + ",.30,100,80)";

        System.out.println("\nInserting: " + sqlString);
        stmt.execute(sqlString);
        return "success";
    }
}
