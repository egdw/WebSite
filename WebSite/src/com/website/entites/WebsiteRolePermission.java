package com.website.entites;

public class WebsiteRolePermission {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column website_role_permission.role_id
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    private Integer roleId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column website_role_permission.permissions
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    private String permissions;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column website_role_permission.role_id
     *
     * @return the value of website_role_permission.role_id
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public Integer getRoleId() {
        return roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column website_role_permission.role_id
     *
     * @param roleId the value for website_role_permission.role_id
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column website_role_permission.permissions
     *
     * @return the value of website_role_permission.permissions
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public String getPermissions() {
        return permissions;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column website_role_permission.permissions
     *
     * @param permissions the value for website_role_permission.permissions
     *
     * @mbggenerated Mon Feb 20 19:45:54 CST 2017
     */
    public void setPermissions(String permissions) {
        this.permissions = permissions;
    }
}