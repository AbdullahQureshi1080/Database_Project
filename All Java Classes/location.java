import java.io.Serializable;

public class location implements Serializable {
    private String location_id;
    private String street_no;
    private String city_name;
    private String country_name;

    public location() {
    }

    public location(String location_id, String street_no, String city_name, String country_name) {
        this.location_id = location_id;
        this.street_no = street_no;
        this.city_name = city_name;
        this.country_name = country_name;
    }

    public String getLocation_id() {
        return location_id;
    }

    public void setLocation_id(String location_id) {
        this.location_id = location_id;
    }

    public String getStreet_no() {
        return street_no;
    }

    public void setStreet_no(String street_no) {
        this.street_no = street_no;
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public String getCountry_name() {
        return country_name;
    }

    public void setCountry_name(String country_name) {
        this.country_name = country_name;
    }
}
