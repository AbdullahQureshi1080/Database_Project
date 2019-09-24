
import java.io.Serializable;

public class skill implements Serializable{
    private String skill_id;
    private String s_anme;
    private String s_value;
    private String player_id;

    public skill() {
    }

    public skill(String skill_id, String s_anme, String s_value, String player_id) {
        this.skill_id = skill_id;
        this.s_anme = s_anme;
        this.s_value = s_value;
        this.player_id = player_id;
    }

    public String getSkill_id() {
        return skill_id;
    }

    public void setSkill_id(String skill_id) {
        this.skill_id = skill_id;
    }

    public String getS_anme() {
        return s_anme;
    }

    public void setS_anme(String s_anme) {
        this.s_anme = s_anme;
    }

    public String getS_value() {
        return s_value;
    }

    public void setS_value(String s_value) {
        this.s_value = s_value;
    }

    public String getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(String player_id) {
        this.player_id = player_id;
    }
}
