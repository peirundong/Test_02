package pojo;

import java.sql.Date;

public class HxCompanyRecruit {

    private Integer recruitid;
    private Integer companyid;
    private Integer statusid;
    private String position;
    private String salaryMax;
    private String salaryMin;
    private Integer educationid;
    private String positiondesc;
    private Integer needs;
    private Date publishtime;
    private Date endtime;
    private Integer areaid;
    private String detaddress;
    private String valuename;
    private String name;
    private String industryname;

    public String getIndustryname() {
        return industryname;
    }

    public void setIndustryname(String industryname) {
        this.industryname = industryname;
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

    public Integer getStatusid() {
        return statusid;
    }

    public void setStatusid(Integer statusid) {
        this.statusid = statusid;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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

    public Integer getEducationid() {
        return educationid;
    }

    public void setEducationid(Integer educationid) {
        this.educationid = educationid;
    }

    public String getPositiondesc() {
        return positiondesc;
    }

    public void setPositiondesc(String positiondesc) {
        this.positiondesc = positiondesc;
    }

    public Integer getNeeds() {
        return needs;
    }

    public void setNeeds(Integer needs) {
        this.needs = needs;
    }

    public Date getPublishtime() {
        return publishtime;
    }

    public void setPublishtime(Date publishtime) {
        this.publishtime = publishtime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public String getDetaddress() {
        return detaddress;
    }

    public void setDetaddress(String detaddress) {
        this.detaddress = detaddress;
    }

    public String getValuename() {
        return valuename;
    }

    public void setValuename(String valuename) {
        this.valuename = valuename;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}