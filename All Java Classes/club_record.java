import java.io.Serializable;

public class club_record implements Serializable {
    private String club_name;
    private String c_total_games;
    private String c_wins;
    private String c_loses;
    private String c_draws;
    private String c_no_of_titles;

    public club_record(String club_name, String c_total_games, String c_wins, String c_loses, String c_draws, String c_no_of_titles) {
        this.club_name = club_name;
        this.c_total_games = c_total_games;
        this.c_wins = c_wins;
        this.c_loses = c_loses;
        this.c_draws = c_draws;
        this.c_no_of_titles = c_no_of_titles;
    }

    public club_record() {
    }

    public String getClub_name() {
        return club_name;
    }

    public void setClub_name(String club_name) {
        this.club_name = club_name;
    }

    public String getC_total_games() {
        return c_total_games;
    }

    public void setC_total_games(String c_total_games) {
        this.c_total_games = c_total_games;
    }

    public String getC_wins() {
        return c_wins;
    }

    public void setC_wins(String c_wins) {
        this.c_wins = c_wins;
    }

    public String getC_loses() {
        return c_loses;
    }

    public void setC_loses(String c_loses) {
        this.c_loses = c_loses;
    }

    public String getC_draws() {
        return c_draws;
    }

    public void setC_draws(String c_draws) {
        this.c_draws = c_draws;
    }

    public String getC_no_of_titles() {
        return c_no_of_titles;
    }

    public void setC_no_of_titles(String c_no_of_titles) {
        this.c_no_of_titles = c_no_of_titles;
    }
}
