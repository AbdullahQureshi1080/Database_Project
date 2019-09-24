import java.io.Serializable;

public class stadium implements Serializable {
    private String stadium_id;
    private int capacity;
    private String pitch_type;
    private String pitch_pattern;
    private String location_id;

    public stadium() {
    }

    public stadium(String stadium_id, int capacity, String pitch_type, String pitch_pattern, String location_id) {
        this.stadium_id = stadium_id;
        this.capacity = capacity;
        this.pitch_type = pitch_type;
        this.pitch_pattern = pitch_pattern;
        this.location_id = location_id;
    }

    public String getStadium_id() {
        return stadium_id;
    }

    public void setStadium_id(String stadium_id) {
        this.stadium_id = stadium_id;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getPitch_type() {
        return pitch_type;
    }

    public void setPitch_type(String pitch_type) {
        this.pitch_type = pitch_type;
    }

    public String getPitch_pattern() {
        return pitch_pattern;
    }

    public void setPitch_pattern(String pitch_pattern) {
        this.pitch_pattern = pitch_pattern;
    }

    public String getLocation_id() {
        return location_id;
    }

    public void setLocation_id(String location_id) {
        this.location_id = location_id;
    }
}
