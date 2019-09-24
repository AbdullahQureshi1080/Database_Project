
import java.sql.*;
import java.util.Scanner;

import oracle.jdbc.pool.OracleDataSource;


public class DataHandlerClub {
    Statement stmt;
    ResultSet rset;
    String query;
    String sqlString;

    public DataHandlerClub() {
    }
    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
    String userid = "FCM";
    String password = "abd007006";
    Connection conn;
    public void getDBConnection() throws SQLException{
        OracleDataSource ds;
        ds = new OracleDataSource();
        ds.setURL(jdbcUrl);
        conn=ds.getConnection(userid,password);
    }

    public ResultSet getAllClubs() throws SQLException{
        getDBConnection();
        stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        query = "SELECT * FROM Club ORDER BY Club_Name";
        System.out.println("\nExecuting query: " + query);
        rset = stmt.executeQuery(query);
        return rset;
    }

    public ResultSet getAllClubsByName(String n) throws SQLException{
        String name = n.toUpperCase();
        getDBConnection();
        stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                ResultSet.CONCUR_READ_ONLY);
        query = "SELECT * FROM Club WHERE UPPER(CLUB_NAME) LIKE \'%" + name + "%\' ORDER BY Worth";
        System.out.println("\nExecuting query: " + query);
        rset = stmt.executeQuery(query);
        return rset;
    }

      public club findClubByName(String name) throws SQLException{
        club selectedClub = new club();
        getDBConnection();
          stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                          ResultSet.CONCUR_READ_ONLY);
          query = "SELECT * FROM club WHERE club_name = " + name;
          System.out.println("\nExecuting: " + query);
        rset = stmt.executeQuery(query);
          while (rset.next()) {
              selectedClub.setClub_name(rset.getString("Club_name"));
              selectedClub.setInitials(rset.getString("Initials"));
              selectedClub.setWorth(rset.getString("WORTH"));
              selectedClub.setNo_of_Players(new Integer(rset.getString("No_of_Players")));
              selectedClub.setTraining_ID(rset.getString("Training_ID"));
              selectedClub.setLeague_ID(rset.getString("League_ID"));
              selectedClub.setCompetition_ID((rset.getString("Competition_ID")));
              selectedClub.setStadium_Name(rset.getString("Stadium_Name"));
              selectedClub.setManager_ID(rset.getString("Manager_ID"));

          }

          return selectedClub;
    }

    public String updateClub(String club_name, String initials, String worth,
                int no_of_Players, String training_ID, String league_ID,
                String competition_ID, String stadium_Name, String manager_ID) throws SQLException{

        Scanner input = new Scanner(System.in);
        System.out.println("Enter club Name to Update :");
        String clubToUpdate = input.next().toUpperCase();
        club oldClub = findClubByName(clubToUpdate);
        getDBConnection();
        stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        StringBuffer columns = new StringBuffer( 255 );

        if ( club_name != null &&
                !club_name.equals(oldClub.getClub_name()))
        {
            columns.append( "Club_name = '" + club_name + "'" );
        }
        if ( initials != null &&
                !initials.equals(oldClub.getInitials()))
        {

            if ( columns.length() > 0 ) {
                columns.append( ", " );
            }

            columns.append( "Initials = '" + initials + "'" );
        }

        if ( worth != null &&
                !worth.equals(oldClub.getWorth()))
        {
            if ( columns.length() > 0 ) {
                columns.append( ", " );
            }
            columns.append( "Worth = '" + worth + "'" );
        }

        if ( no_of_Players != 0 && no_of_Players != (oldClub.getNo_of_Players()))

        {

            if ( columns.length() > 0 ) {
                columns.append( ", " );
            }

            columns.append( "No_of_Players = '" + club_name + "'" );
        }

        if ( training_ID != null &&
                !training_ID.equals(oldClub.getTraining_ID()))
        {

            if ( columns.length() > 0 ) {
                columns.append( ", " );
            }

            columns.append( "Training_ID = '" + training_ID + "'" );
        }
        if ( league_ID != null &&
                !league_ID.equals(oldClub.getLeague_ID()))
        {

            if ( columns.length() > 0 ) {
                columns.append( ", " );
            }

            columns.append( "League_ID = '" + league_ID + "'" );
        }
        if ( competition_ID != null &&
                !competition_ID.equals(oldClub.getCompetition_ID()))
        {

            if ( columns.length() > 0 ) {
                columns.append( ", " );
            }

            columns.append( "Competition_ID = '" + competition_ID + "'" );
        }
        if ( stadium_Name != null &&
                !stadium_Name.equals(oldClub.getStadium_Name()))
        {

            if ( columns.length() > 0 ) {
                columns.append( ", " );
            }

            columns.append( "Stadium_Name = '" + stadium_Name + "'" );
        }
        if ( manager_ID != null &&
                !manager_ID.equals(oldClub.getManager_ID()))
        {

            if ( columns.length() > 0 ) {
                columns.append( ", " );
            }

            columns.append( "Manager_ID = '" + manager_ID + "'" );
        }
        if ( columns.length() > 0 )
        {
            sqlString = "update Club SET " + columns.toString() +
                    " WHERE Club_Name = " + oldClub;
            System.out.println("\nExecuting: " + sqlString);
            stmt.executeUpdate(sqlString);
        }
        else
        {
            System.out.println( "Nothing to do to update Employee Id: " +
                    club_name);
        }
        return "Success";
    }

    public String deleteClubByName(String name) throws SQLException {
        getDBConnection();
        stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);

        sqlString = "DELETE FROM CLUB WHERE CLUB_NAME = " + name;
        System.out.println("\nExecuting: " + sqlString);
        stmt.executeUpdate(sqlString);
        return "success";
    }

public void INSERT(String var1,String var2,String var3,int  var4,String var5,String var6,String var7,String var8,String var9) throws Exception{

        try{
      getDBConnection();
      PreparedStatement create = conn.prepareStatement("INSERT INTO club (Club_name,  Initials,  Worth, No_of_Players,  Training_ID,  League_ID, Competition_ID,  Stadium_Name,  Manager_ID) " +
              "VALUES(?,?,?,?,?,?,?,?,?)");
            create.setString(1, var1);
            create.setString(2, var2);
            create.setString(3, var3);
            create.setInt(4, var4);
            create.setString(5, var5);
            create.setString(6, var6);
            create.setString(7, var7);
            create.setString(8, var8);
            create.setString(9, var9);
      create.executeUpdate();
} catch(Exception e){
        System.out.println("SQL ERROR");
        }


    //System.out.println("Success");
   // return "Success";
    }

    public void update(String var1,String var2,String var3,int  var4,String var5,String var6,String var7,String var8,String var9){

        try{
            getDBConnection();
            PreparedStatement create = conn.prepareStatement("UPDATE club SET Initials=?,  Worth=?, No_of_Players=?,  Training_ID=?,  League_ID=?, Competition_ID=?,  Stadium_Name=?,  Manager_ID=? WHERE Club_Name = ?");
            create.setString(1, var2);
            create.setString(2, var3);
            create.setInt(3, var4);
            create.setString(4, var5);
            create.setString(5, var6);
            create.setString(6, var7);
            create.setString(7, var8);
            create.setString(8, var9);
            create.setString(9, var1);
            create.executeUpdate();
        } catch(Exception e){
            System.out.println("SQL ERROR");
        }
    }
}

