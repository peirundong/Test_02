package pojo;

/**
 * Created by Aaron on 2017/12/7.
 */
public class HxIndustry {
    private int id;
    private int industryno;
    private String industryname;
    private  int parentno;

    @Override
    public String toString() {
        return "HxIndustry{" +
                "id=" + id +
                ", industryno=" + industryno +
                ", industryname='" + industryname + '\'' +
                ", parentno=" + parentno +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIndustryno() {
        return industryno;
    }

    public void setIndustryno(int industryno) {
        this.industryno = industryno;
    }

    public String getIndustryname() {
        return industryname;
    }

    public void setIndustryname(String industryname) {
        this.industryname = industryname;
    }

    public int getParentno() {
        return parentno;
    }

    public void setParentno(int parentno) {
        this.parentno = parentno;
    }

    public HxIndustry(int id, int industryno, String industryname, int parentno) {
        this.id = id;
        this.industryno = industryno;
        this.industryname = industryname;
        this.parentno = parentno;
    }

    public HxIndustry() {
    }

}
