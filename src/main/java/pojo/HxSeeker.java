package pojo;

import java.sql.Date;

public class HxSeeker {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_seeker.seekerid
     *
     * @mbggenerated
     */
    private Integer seekerid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_seeker.seekerphone
     *
     * @mbggenerated
     */
    private String seekerphone;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_seeker.seekerpwd
     *
     * @mbggenerated
     */
    private String seekerpwd;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_seeker.seeksalt
     *
     * @mbggenerated
     */
    private String seeksalt;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_seeker.seekeremail
     *
     * @mbggenerated
     */
    private String seekeremail;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_seeker.seekername
     *
     * @mbggenerated
     */
    private String seekername;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_seeker.seekerregtime
     *
     * @mbggenerated
     */
    private Date seekerregtime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_seeker.seekerid
     *
     * @return the value of hx_seeker.seekerid
     *
     * @mbggenerated
     */
    public Integer getSeekerid() {
        return seekerid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_seeker.seekerid
     *
     * @param seekerid the value for hx_seeker.seekerid
     *
     * @mbggenerated
     */
    public void setSeekerid(Integer seekerid) {
        this.seekerid = seekerid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_seeker.seekerphone
     *
     * @return the value of hx_seeker.seekerphone
     *
     * @mbggenerated
     */
    public String getSeekerphone() {
        return seekerphone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_seeker.seekerphone
     *
     * @param seekerphone the value for hx_seeker.seekerphone
     *
     * @mbggenerated
     */
    public void setSeekerphone(String seekerphone) {
        this.seekerphone = seekerphone == null ? null : seekerphone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_seeker.seekerpwd
     *
     * @return the value of hx_seeker.seekerpwd
     *
     * @mbggenerated
     */
    public String getSeekerpwd() {
        return seekerpwd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_seeker.seekerpwd
     *
     * @param seekerpwd the value for hx_seeker.seekerpwd
     *
     * @mbggenerated
     */
    public void setSeekerpwd(String seekerpwd) {
        this.seekerpwd = seekerpwd == null ? null : seekerpwd.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_seeker.seeksalt
     *
     * @return the value of hx_seeker.seeksalt
     *
     * @mbggenerated
     */
    public String getSeeksalt() {
        return seeksalt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_seeker.seeksalt
     *
     * @param seeksalt the value for hx_seeker.seeksalt
     *
     * @mbggenerated
     */
    public void setSeeksalt(String seeksalt) {
        this.seeksalt = seeksalt == null ? null : seeksalt.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_seeker.seekeremail
     *
     * @return the value of hx_seeker.seekeremail
     *
     * @mbggenerated
     */
    public String getSeekeremail() {
        return seekeremail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_seeker.seekeremail
     *
     * @param seekeremail the value for hx_seeker.seekeremail
     *
     * @mbggenerated
     */
    public void setSeekeremail(String seekeremail) {
        this.seekeremail = seekeremail == null ? null : seekeremail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_seeker.seekername
     *
     * @return the value of hx_seeker.seekername
     *
     * @mbggenerated
     */
    public String getSeekername() {
        return seekername;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_seeker.seekername
     *
     * @param seekername the value for hx_seeker.seekername
     *
     * @mbggenerated
     */
    public void setSeekername(String seekername) {
        this.seekername = seekername == null ? null : seekername.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_seeker.seekerregtime
     *
     * @return the value of hx_seeker.seekerregtime
     *
     * @mbggenerated
     */
    public Date getSeekerregtime() {
        return seekerregtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_seeker.seekerregtime
     *
     * @param seekerregtime the value for hx_seeker.seekerregtime
     *
     * @mbggenerated
     */
    public void setSeekerregtime(Date seekerregtime) {
        this.seekerregtime = seekerregtime;
    }
}