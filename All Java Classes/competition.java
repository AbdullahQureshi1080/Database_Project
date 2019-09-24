import java.io.Serializable;

public class competition implements Serializable {
    private String competition_id;
    private String c_year;
    private String c_name;
    private String current_champions;

    public competition() {
    }

    public competition(String competition_id, String c_year, String c_name, String current_champions) {
        this.competition_id = competition_id;
        this.c_year = c_year;
        this.c_name = c_name;
        this.current_champions = current_champions;
    }

    public String getCompetition_id() {
        return competition_id;
    }

    public void setCompetition_id(String competition_id) {
        this.competition_id = competition_id;
    }

    public String getC_year() {
        return c_year;
    }

    public void setC_year(String c_year) {
        this.c_year = c_year;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getCurrent_champions() {
        return current_champions;
    }

    public void setCurrent_champions(String current_champions) {
        this.current_champions = current_champions;
    }
}
