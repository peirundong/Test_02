package pojo;

/**
 * Created by AW on 2017/12/6.
 */
public class Hxinfo {

    private String salaryMax;
    private String salaryMin;

    @Override
    public String toString() {
        return "Hxinfo{" +
                "salaryMax='" + salaryMax + '\'' +
                ", salaryMin='" + salaryMin + '\'' +
                ", seekerid=" + seekerid +
                ", oftenuse=" + oftenuse +
                ", resumeid=" + resumeid +
                ", recruitid=" + recruitid +
                ", companyid=" + companyid +
                ", companylicenseurl='" + companylicenseurl + '\'' +
                ", merger_name='" + merger_name + '\'' +
                ", companyname='" + companyname + '\'' +
                ", companyphone='" + companyphone + '\'' +
                ", valuename='" + valuename + '\'' +
                ", shortName='" + shortName + '\'' +
                ", position='" + position + '\'' +
                ", pay='" + pay + '\'' +
                ", companyaccount='" + companyaccount + '\'' +
                ", companyemail='" + companyemail + '\'' +
                ", companyregtime='" + companyregtime + '\'' +
                ", companyinformation='" + companyinformation + '\'' +
                '}';
    }

    public String getSalaryMax() {
        return salaryMax;
    }

    public void setSalaryMax(String salaryMax) {
        this.salaryMax = salaryMax;
    }

    public String getSalaryMin() {
        return salaryMin;
    }

    public void setSalaryMin(String salaryMin) {
        this.salaryMin = salaryMin;
    }

    private Integer seekerid;

    private Integer oftenuse;

    private Integer resumeid;

    private Integer recruitid;

    private Integer companyid;

    public Integer getSeekerid() {
        return seekerid;
    }

    public void setSeekerid(Integer seekerid) {
        this.seekerid = seekerid;
    }

    public Integer getOftenuse() {
        return oftenuse;
    }

    public void setOftenuse(Integer oftenuse) {
        this.oftenuse = oftenuse;
    }

    public Integer getResumeid() {
        return resumeid;
    }

    public void setResumeid(Integer resumeid) {
        this.resumeid = resumeid;
    }

    public Integer getRecruitid() {
        return recruitid;
    }

    public void setRecruitid(Integer recruitid) {
        this.recruitid = recruitid;
    }

    public Integer getCompanyid() {
        return companyid;
    }

    public void setCompanyid(Integer companyid) {
        this.companyid = companyid;
    }

    private String companylicenseurl;

    public String getCompanylicenseurl() {
        return companylicenseurl;
    }

    public void setCompanylicenseurl(String companylicenseurl) {
        this.companylicenseurl = companylicenseurl;
    }

    private String merger_name;

    public String getMerger_name() {
        return merger_name;
    }

    public void setMerger_name(String merger_name) {
        this.merger_name = merger_name;
    }

    private String companyname;

    private String companyphone;

    private String valuename;

    private String shortName;

    private String position;

    private String pay;

    private String companyaccount;

    private String companyemail;

    private String companyregtime;

    public String getCompanyaccount() {
        return companyaccount;
    }

    public String getCompanyemail() {
        return companyemail;
    }

    public String getCompanyregtime() {
        return companyregtime;
    }

    public String getCompanyinformation() {
        return companyinformation;
    }

    private String companyinformation;

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getCompanyphone() {
        return companyphone;
    }

    public void setCompanyphone(String companyphone) {
        this.companyphone = companyphone;
    }

    public String getValuename() {
        return valuename;
    }

    public void setValuename(String valuename) {
        this.valuename = valuename;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public Hxinfo(){}
    public Hxinfo(String companyname, String companyphone, String valuename, String shortName, String position, String pay, String companyaccount, String companyemail, String companyregtime, String companyinformation) {
        this.companyname = companyname;
        this.companyphone = companyphone;
        this.valuename = valuename;
        this.shortName = shortName;
        this.position = position;
        this.pay = pay;
        this.companyaccount = companyaccount;
        this.companyemail = companyemail;
        this.companyregtime = companyregtime;
        this.companyinformation = companyinformation;
    }
}
