import java.io.Serializable;

public class Position implements Serializable {

    String position_id, position_name, player_id;

    public Position(String position_id, String position_name, String player_id) {
        this.position_id = position_id;
        this.position_name = position_name;
        this.player_id = player_id;
    }

    public String getPosition_id() {
        return position_id;
    }

    public void setPosition_id(String position_id) {
        this.position_id = position_id;
    }

    public String getPosition_name() {
        return position_name;
    }

    public void setPosition_name(String position_name) {
        this.position_name = position_name;
    }

    public String getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(String player_id) {
        this.player_id = player_id;
    }
}
