import java.io.Serializable;

public class training_id implements Serializable {
    private String training_id;
    private String t_name;
    private int no_of_drills;
    private String duration;
    private String type;

    public training_id() {
    }

    public training_id(String training_id, String t_name, int no_of_drills, String duration, String type) {
        this.training_id = training_id;
        this.t_name = t_name;
        this.no_of_drills = no_of_drills;
        this.duration = duration;
        this.type = type;
    }

    public String getTraining_id() {
        return training_id;
    }

    public void setTraining_id(String training_id) {
        this.training_id = training_id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public int getNo_of_drills() {
        return no_of_drills;
    }

    public void setNo_of_drills(int no_of_drills) {
        this.no_of_drills = no_of_drills;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
