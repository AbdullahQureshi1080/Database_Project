import java.io.Serializable;

public class club implements Serializable {
    private String Club_name;
    private String Initials;
    private String Worth;
    private int No_of_Players;
    private String Training_ID;
    private String League_ID;
    private String Competition_ID;
    private String Stadium_Name;
    private String Manager_ID;

    public club() {
    }

    public club(String club_name, String initials, String worth,
                int no_of_Players, String training_ID, String league_ID,
                String competition_ID, String stadium_Name, String manager_ID) {
        Club_name = club_name;
        Initials = initials;
        Worth = worth;
        No_of_Players = no_of_Players;
        Training_ID = training_ID;
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

    public String getTraining_ID() {
        return Training_ID;
    }

    public void setTraining_ID(String training_ID) {
        Training_ID = training_ID;
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

    public String getStadium_Name() {
        return Stadium_Name;
    }

    public void setStadium_Name(String stadium_Name) {
        Stadium_Name = stadium_Name;
    }

    public String getManager_ID() {
        return Manager_ID;
    }

    public void setManager_ID(String manager_ID) {
        Manager_ID = manager_ID;
    }
}