package pojo;

public class HxPosition {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_position.positionid
     *
     * @mbggenerated
     */
    private Integer positionid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_position.positionname
     *
     * @mbggenerated
     */
    private String positionname;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column hx_position.positionparentsid
     *
     * @mbggenerated
     */
    private Integer positionparentsid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_position.positionid
     *
     * @return the value of hx_position.positionid
     *
     * @mbggenerated
     */
    public Integer getPositionid() {
        return positionid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_position.positionid
     *
     * @param positionid the value for hx_position.positionid
     *
     * @mbggenerated
     */
    public void setPositionid(Integer positionid) {
        this.positionid = positionid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_position.positionname
     *
     * @return the value of hx_position.positionname
     *
     * @mbggenerated
     */
    public String getPositionname() {
        return positionname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_position.positionname
     *
     * @param positionname the value for hx_position.positionname
     *
     * @mbggenerated
     */
    public void setPositionname(String positionname) {
        this.positionname = positionname == null ? null : positionname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column hx_position.positionparentsid
     *
     * @return the value of hx_position.positionparentsid
     *
     * @mbggenerated
     */
    public Integer getPositionparentsid() {
        return positionparentsid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column hx_position.positionparentsid
     *
     * @param positionparentsid the value for hx_position.positionparentsid
     *
     * @mbggenerated
     */
    public void setPositionparentsid(Integer positionparentsid) {
        this.positionparentsid = positionparentsid;
    }
}