import java.io.Serializable;

public class manager_record implements Serializable {
    private String manager_id;
    private String m_wins;
    private String m_loses;
    private String m_draws;
    private String m_total_games;
    private String m_no_of_titles;

    public manager_record() {
    }

    public manager_record(String manager_id, String m_wins, String m_loses, String m_draws, String m_total_games, String m_no_of_titles) {
        this.manager_id = manager_id;
        this.m_wins = m_wins;
        this.m_loses = m_loses;
        this.m_draws = m_draws;
        this.m_total_games = m_total_games;
        this.m_no_of_titles = m_no_of_titles;
    }

    public String getManager_id() {
        return manager_id;
    }

    public void setManager_id(String manager_id) {
        this.manager_id = manager_id;
    }

    public String getM_wins() {
        return m_wins;
    }

    public void setM_wins(String m_wins) {
        this.m_wins = m_wins;
    }

    public String getM_loses() {
        return m_loses;
    }

    public void setM_loses(String m_loses) {
        this.m_loses = m_loses;
    }

    public String getM_draws() {
        return m_draws;
    }

    public void setM_draws(String m_draws) {
        this.m_draws = m_draws;
    }

    public String getM_total_games() {
        return m_total_games;
    }

    public void setM_total_games(String m_total_games) {
        this.m_total_games = m_total_games;
    }

    public String getM_no_of_titles() {
        return m_no_of_titles;
    }

    public void setM_no_of_titles(String m_no_of_titles) {
        this.m_no_of_titles = m_no_of_titles;
    }
}
