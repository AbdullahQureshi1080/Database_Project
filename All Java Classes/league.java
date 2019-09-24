import java.io.Serializable;

public class league implements Serializable {
    private String league_id;
    private String l_year;
    private String l_name;
    private String current_champions;

    public league() {
    }

    public league(String league_id, String l_year, String l_name, String current_champions) {
        this.league_id = league_id;
        this.l_year = l_year;
        this.l_name = l_name;
        this.current_champions = current_champions;
    }

    public String getLeague_id() {
        return league_id;
    }

    public void setLeague_id(String league_id) {
        this.league_id = league_id;
    }

    public String getL_year() {
        return l_year;
    }

    public void setL_year(String l_year) {
        this.l_year = l_year;
    }

    public String getL_name() {
        return l_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public String getCurrent_champions() {
        return current_champions;
    }

    public void setCurrent_champions(String current_champions) {
        this.current_champions = current_champions;
    }
}
