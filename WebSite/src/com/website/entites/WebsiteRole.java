package com.website.entites;

import java.util.Date;

public class WebsiteRole {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column website_role.role_id
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    private Integer roleId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column website_role.role_name
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    private String roleName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column website_role.create_time
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column website_role.description
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    private String description;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column website_role.role_id
     *
     * @return the value of website_role.role_id
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public Integer getRoleId() {
        return roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column website_role.role_id
     *
     * @param roleId the value for website_role.role_id
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column website_role.role_name
     *
     * @return the value of website_role.role_name
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column website_role.role_name
     *
     * @param roleName the value for website_role.role_name
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column website_role.create_time
     *
     * @return the value of website_role.create_time
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column website_role.create_time
     *
     * @param createTime the value for website_role.create_time
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column website_role.description
     *
     * @return the value of website_role.description
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column website_role.description
     *
     * @param description the value for website_role.description
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public void setDescription(String description) {
        this.description = description;
    }
}