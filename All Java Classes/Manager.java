import java.io.Serializable;

public class Manager implements Serializable {
    String manager_id, name, nationality, contract_id, contact;
    int age;


    public Manager(String manager_id, String name, String nationality, String contract_id, String contact, int age) {

        this.manager_id = manager_id;
        this.name = name;
        this.nationality = nationality;
        this.contract_id = contract_id;
        this.contact = contact;
        this.age = age;
    }

    public String getManager_id() {
        return manager_id;
    }

    public void setManager_id(String manager_id) {
        this.manager_id = manager_id;
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
