import java.io.Serializable;

public class contract implements Serializable {
    String contract_id, salary, release_clause;
    int length;

    public contract(String contract_id, String salary, String release_clause, int length) {
        this.contract_id = contract_id;
        this.salary = salary;
        this.release_clause = release_clause;
        this.length = length;
    }

    public String getContract_id() {
        return contract_id;
    }

    public void setContract_id(String contract_id) {
        this.contract_id = contract_id;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getRelease_clause() {
        return release_clause;
    }

    public void setRelease_clause(String release_clause) {
        this.release_clause = release_clause;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }
}
