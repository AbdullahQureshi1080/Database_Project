import java.io.Serializable;

public class Player implements Serializable {
    String player_id, name, nationality, contract_id,agent_id, contact;
    int age;

    public Player(String player_id, String name, String nationality, String contract_id, String agent_id, String contact, int age) {
        this.player_id = player_id;
        this.name = name;
        this.nationality = nationality;
        this.contract_id = contract_id;
        this.agent_id = agent_id;
        this.contact = contact;
        this.age = age;
    }

    public String getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(String player_id) {
        this.player_id = player_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getContract_id() {
        return contract_id;
    }

    public void setContract_id(String contract_id) {
        this.contract_id = contract_id;
    }

    public String getAgent_id() {
        return agent_id;
    }

    public void setAgent_id(String agent_id) {
        this.agent_id = agent_id;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
