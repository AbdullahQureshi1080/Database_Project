import java.io.Serializable;

public class player_record implements Serializable {
    private String  player_id;
    private int  p_total_games;
    private int  p_wins;
    private int p_loses;
    private int p_draws;
    private int p_goals;
    private int p_assits;
    private int p_no_of_titles;
    private int p_clean_sheets;

    public player_record() {
    }

    public player_record(String player_id, int p_total_games, int p_wins, int p_loses, int p_draws, int p_goals, int p_assits, int p_no_of_titles, int p_clean_sheets) {
        this.player_id = player_id;
        this.p_total_games = p_total_games;
        this.p_wins = p_wins;
        this.p_loses = p_loses;
        this.p_draws = p_draws;
        this.p_goals = p_goals;
        this.p_assits = p_assits;
        this.p_no_of_titles = p_no_of_titles;
        this.p_clean_sheets = p_clean_sheets;
    }

    public String getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(String player_id) {
        this.player_id = player_id;
    }

    public int getP_total_games() {
        return p_total_games;
    }

    public void setP_total_games(int p_total_games) {
        this.p_total_games = p_total_games;
    }

    public int getP_wins() {
        return p_wins;
    }

    public void setP_wins(int p_wins) {
        this.p_wins = p_wins;
    }

    public int getP_loses() {
        return p_loses;
    }

    public void setP_loses(int p_loses) {
        this.p_loses = p_loses;
    }

    public int getP_draws() {
        return p_draws;
    }

    public void setP_draws(int p_draws) {
        this.p_draws = p_draws;
    }

    public int getP_goals() {
        return p_goals;
    }

    public void setP_goals(int p_goals) {
        this.p_goals = p_goals;
    }

    public int getP_assits() {
        return p_assits;
    }

    public void setP_assits(int p_assits) {
        this.p_assits = p_assits;
    }

    public int getP_no_of_titles() {
        return p_no_of_titles;
    }

    public void setP_no_of_titles(int p_no_of_titles) {
        this.p_no_of_titles = p_no_of_titles;
    }

    public int getP_clean_sheets() {
        return p_clean_sheets;
    }

    public void setP_clean_sheets(int p_clean_sheets) {
        this.p_clean_sheets = p_clean_sheets;
    }
}
