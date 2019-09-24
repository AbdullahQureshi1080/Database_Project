import java.io.Serializable;

public class Agent implements Serializable {
    private String agent_id;
    private String a_name;
    private String a_age;
    private String a_nationality;
    private String a_contact;

    public Agent(String agent_id, String a_name, String a_age, String a_nationality, String a_contact) {
        this.agent_id = agent_id;
        this.a_name = a_name;
        this.a_age = a_age;
        this.a_nationality = a_nationality;
        this.a_contact = a_contact;
    }

    public String getAgent_id() {
        return agent_id;
    }

    public void setAgent_id(String agent_id) {
        this.agent_id = agent_id;
    }

    public String getA_name() {
        return a_name;
    }

    public void setA_name(String a_name) {
        this.a_name = a_name;
    }

    public String getA_age() {
        return a_age;
    }

    public void setA_age(String a_age) {
        this.a_age = a_age;
    }

    public String getA_nationality() {
        return a_nationality;
    }

    public void setA_nationality(String a_nationality) {
        this.a_nationality = a_nationality;
    }

    public String getA_contact() {
        return a_contact;
    }

    public void setA_contact(String a_contact) {
        this.a_contact = a_contact;
    }
}
