import java.io.Serializable;

public class Fixture implements Serializable {
    private String fixture_id;
    private String competition_id;
    private String league_id;
    private String status;
    private String day;
    private String time;
    private String location_id;

    public Fixture() {
    }

    public Fixture(String fixture_id, String competition_id, String league_id, String status, String day, String time, String location_id) {
        this.fixture_id = fixture_id;
        this.competition_id = competition_id;
        this.league_id = league_id;
        this.status = status;
        this.day = day;
        this.time = time;
        this.location_id = location_id;
    }

    public String getFixture_id() {
        return fixture_id;
    }

    public void setFixture_id(String fixture_id) {
        this.fixture_id = fixture_id;
    }

    public String getCompetition_id() {
        return competition_id;
    }

    public void setCompetition_id(String competition_id) {
        this.competition_id = competition_id;
    }

    public String getLeague_id() {
        return league_id;
    }

    public void setLeague_id(String league_id) {
        this.league_id = league_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getLocation_id() {
        return location_id;
    }

    public void setLocation_id(String location_id) {
        this.location_id = location_id;
    }
}
