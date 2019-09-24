/*import java.io.Serializable;
import java.sql.*;
import oracle.jdbc.*;
import oracle.jdbc.pool.OracleDataSource;

public class clubBean implements Serializable {
    private String Club_name;
    private String Initials;
    private String Worth;
    private int No_of_Players;
    private String Traning_ID;
    private String League_ID;
    private String Competition_ID;
    private int Stadium_Name;
    private String Manager_ID;

    public clubBean() {
    }

    public clubBean(String club_name, String initials, String worth,
                    int no_of_Players, String traning_ID, String league_ID,
                    String competition_ID, int stadium_Name, String manager_ID) {
        Club_name = club_name;
        Initials = initials;
        Worth = worth;
        No_of_Players = no_of_Players;
        Traning_ID = traning_ID;
        League_ID = league_ID;
        Competition_ID = competition_ID;
        Stadium_Name = stadium_Name;
        Manager_ID = manager_ID;
    }

    public String getClub_name() {
        return Club_name;
    }

    public void setClub_name(String club_name) {
        Club_name = club_name;
    }

    public String getInitials() {
        return Initials;
    }

    public void setInitials(String initials) {
        Initials = initials;
    }

    public String getWorth() {
        return Worth;
    }

    public void setWorth(String worth) {
        Worth = worth;
    }

    public int getNo_of_Players() {
        return No_of_Players;
    }

    public void setNo_of_Players(int no_of_Players) {
        No_of_Players = no_of_Players;
    }

    public String getTraning_ID() {
        return Traning_ID;
    }

    public void setTraning_ID(String traning_ID) {
        Traning_ID = traning_ID;
    }

    public String getLeague_ID() {
        return League_ID;
    }

    public void setLeague_ID(String league_ID) {
        League_ID = league_ID;
    }

    public String getCompetition_ID() {
        return Competition_ID;
    }

    public void setCompetition_ID(String competition_ID) {
        Competition_ID = competition_ID;
    }

    public int getStadium_Name() {
        return Stadium_Name;
    }

    public void setStadium_Name(int stadium_Name) {
        Stadium_Name = stadium_Name;
    }

    public String getManager_ID() {
        return Manager_ID;
    }

    public void setManager_ID(String manager_ID) {
        Manager_ID = manager_ID;
    }

    public clubBean findClubById(String Id) throws SQLException {

        clubBean selectedClub = new clubBean();
        Connection con=DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:orcl","FCM","abd007006")
        Statement stmt=con.createStatement();
        stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                        ResultSet.CONCUR_READ_ONLY);
        query = "SELECT * FROM Club WHERE Club_Name = " + club_;
        System.out.println("\nExecuting: " + query);

        return null;
    }
}

*/